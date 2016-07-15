<?php
session_start();
if (!isset($_SESSION['carrinho'])) {
	$_SESSION['carrinho'] = array();
}
//Adição dos Produtos
if (isset($_GET['acao'])) {
	
// Adicionar no Carrinho
	if ($_GET['acao'] == 'add') {
		$id = intval($_GET["id"]);
		if (!isset($_SESSION['carrinho'][$id])) {
			$_SESSION['carrinho'][$id] = 1;
		} else {
			$_SESSION['carrinho'][$id] += 1;
		}
	}
	
	//Remover do Carrinho
	if ($_GET['acao'] == 'apagar'){
		$id = intval($_GET["id"]);
		if (isset($_SESSION['carrinho'][$id]))	{
			unset ($_SESSION['carrinho'][$id]);
		}
	}	
}


?>
<html>
	<?php
	require ("cabecalho.php");
	?>
	<body>
		<div class="container"><table class="table">
			<tr>
				<th>Descrição</th><th>Preço</th><th>Quantidade</th><th>Subtotal</th><th>Remover</th>
			</tr>
			<form action="checkout.php" method="post">
				<?php
				
				require ("conexao.php");
				if (count($_SESSION['carrinho']) == 0) {
					echo '<tr><td colspan="5">O carrinho está vazio</td> </tr> ';

				} else {

					foreach ($_SESSION['carrinho'] as $id => $qtd) {

						$res1 = mysqli_query($con, "SELECT * FROM Mercadorias WHERE IDMercadoria='$id'");
						$linha1 = mysqli_fetch_assoc($res1);

						$nome = $linha1['DsMercadoria'];
						$preco = number_format($linha1['PriceMercadoria'],2);
						$subtotal= number_format($linha1['PriceMercadoria'],2) * $qtd;
						@$total += $subtotal;
						$sessao = array($_SESSION['carrinho']);	
						
						
    				echo '<tr><td>' . $nome . '</td>
						<td>R$' . $preco . '</td>
						<td><input type="text" size="3" name="prod['.$id.']" value="'.$qtd.'"> 
						<td>R$' . number_format($subtotal, 2) . '</td>
						<td><a href="?acao=apagar&id='.$id.'" >Remove</a></td></tr>';
				
					}
					
echo "<input type=hidden value=".$total." name=total></input>";
				
echo '<tr><td colspan="5">Total: R$'.number_format($total,2).'</td></tr>';
				}
			
			
				echo '</table>';
								echo '<a href="Compra.php">Continuar Comprando</a>';
				
				?>
			<input type="submit" value="Finalizar Pedido"  class="btn btn-primary col-md-offset-7">
			</form>
		</div>
		
	</body>

</html>
<?php 
require ("footer.php");
?>
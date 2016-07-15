<html>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<body>
	<?php
	require ("conexao.php");
	require ("cabecalho.php");
	
	  
	   
	$res = mysqli_query($con, "SELECT * FROM Mercadorias ORDER BY IdMercadoria DESC LIMIT 4");
	$linha = mysqli_fetch_assoc($res);

	echo '<div class="container"><table class="table table-condensed">';
	echo "<tr><th colspan=5>CONFIRA NOSSAS OFERTAS</th></tr>";
	echo "<tr><th colspan=2>Produtos</th><th>Preço</th><th>Setor</th></tr>";
	while ($linha) {
		echo '<tr><td>' . '<img src="'.$linha['image'] . '"height="100" width="120"/>' . "</td>";
	
		echo '<td>' . $linha["DsMercadoria"] . '</td>';
		echo '<td>' . ' R$ ' . number_format($linha["PriceMercadoria"], 2) . "</td>";
		echo '<td>' . $linha["TpMercadorias"] . "</td>";
		$id = $linha['IDMercadoria'];
		echo '<td><a href="carrinho.php?acao=add&id=' . $id . '">Comprar</a></td></tr>';

		$linha = mysqli_fetch_assoc($res);
	}
	echo '</table></div>';
?>
</body>
</html>
<?php 
require ("footer.php");
?>
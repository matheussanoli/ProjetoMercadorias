
<?php
session_start();
require ("conexao.php");
require ("cabecalho.php");
$id = $_POST['prod'];
$total = $_POST['total'];
$data = date("d/m/y");
unset ($_SESSION['carrinho']);
$insert = "INSERT INTO Negociacao VALUES(default,'COMPRA',$total,'$data',1)";
mysqli_query($con, $insert);
$sele = "SELECT Max(IDNegociacao) from Negociacao";
$res3 = mysqli_query($con, $sele);
      $linha = mysqli_fetch_assoc($res3);
	  $idmax= $linha['Max(IDNegociacao)'];
	  echo '<div class="alert alert-success" role="alert"><h1>Parabéns<br>Seu número de Pedido é: '.$idmax.'</h1></div>';
	  
foreach ($id as $key => $value) {
	$id1=$key;
	$id2=$id[$key];
$sql = "INSERT INTO ItensPedido VALUES($idmax,$id1,$id2)";
mysqli_query($con, $sql);



};
mysqli_close($con);
echo '<a href="index.php" class="btn btn-primary col-md-offset-5">Clique aqui para retornar ao Início</a>';
require ("footer.php");
?>
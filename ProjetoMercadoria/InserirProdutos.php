<?php
require ("conexao.php");
require ("cabecalho.php");
$uploaddir = 'img/'; //directório onde será gravado a imagem
$nome = $_POST['nome'];
$valor = $_POST['valor'];
$tp = $_POST['combo'];
$data = date("d/m/y");

if (move_uploaded_file($_FILES['arq']['tmp_name'], $uploaddir . $_FILES['arq']['name'])) {
  	
    $uploadfile = $uploaddir . $_FILES['arq']['name'];
	
	$sql = "INSERT INTO mercadorias VALUES (default,'$tp','$nome','$valor','$uploadfile')";
	mysqli_query($con, $sql);
	$sql1 = "INSERT INTO negociacao VALUES (default,'VENDA','$valor','$data','1')";
	mysqli_query($con, $sql1);
 echo '<div class="alert alert-success" role="alert"><h1>Sua Oferta foi inserida com sucesso<br>Clique <a href="Compra.php">aqui</a> e confira!:</h1></div>';
} else {
   
}
 
require ("footer.php");
?>

<?php
	require ("conexao.php");
	require ("cabecalho.php");
	
	  
	   
	$res = mysqli_query($con, "SELECT * FROM Negociacao ORDER BY IdNegociacao DESC LIMIT 6");
	$linha = mysqli_fetch_assoc($res);
	echo '<div class="container"><table class="table table-condensed">';
	echo "<tr><th colspan=5>ULTIMAS 6 OPERAÇÕES</th></tr>";
	echo "<tr><th>NUMERO DO PEDIDO</th><th>VALOR DA NEGOCIAÇÃO</th><th>DATA</th><th>TIPO DE NEGOCIAÇÃO</th></tr>";
	while ($linha) {
		echo '<tr><td>'.$linha['IDNegociacao'];	
		echo '<td>' . ' R$ ' . number_format($linha["VlNegociacao"], 2) . "</td>";
		echo '<td>'.($linha["Date"]) . "</td>";
		echo '<td>'.$linha['DsNegociacao'].'</tr>';	
	

		$linha = mysqli_fetch_assoc($res);
	}
	echo '</table></div>';
?>
</body>
</html>
<?php 
require ("footer.php");
?>
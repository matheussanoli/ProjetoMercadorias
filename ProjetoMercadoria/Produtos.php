<html>

	<?php
	require ("cabecalho.php");
	?>
 <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.js" type="text/javascript"></script> 

	<body> 
		<div class="container">
			<div class="">
				<div class="col-md-3 col-md-offset-4">
		<form action="InserirProdutos.php" id="f1" class="validate" enctype="multipart/form-data" method="post">
			<p><label>Descrição*</label><input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu Nome" required/><br><span>Digite o nome do Produto</span></p>
			<p><label>Valor*</label><input type="text" class="form-control required numeric" name="valor" ><br><span>Valor do Produto</span></p>
</p>
   <p>
                    <label>Tipo do produto*</label>
                    <select name="combo" id="combo" class="required form-control">
                        <option value="">Selecione um item na lista</option>
                        <option value="ALIMENTO">ALIMENTO</option>
                        <option value="BEBIDA">BEBIDA</option>
                        <option value="ELETRO-ELETRONICO">ELETRO-ELETRONICO</option>
                        <option value="ELETRO-DOMESTICO">ELETRODOMÉSTICO</option>
                    </select>
                    <span>Selecione um item</span>
            </p>   <br>

	
			<input type="file" name="arq"  class="" required=""/> <br>
		<input type="submit"  class="btn btn-success">
		</form>
		</div>
		</div>
		</div>
	</body>
	
</html>
<?php 
require ("footer.php");
?>
<html>
<head>
	<meta charset="UTF-8">
	<title>Calculadora IMC</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	</head>
<body>

	<br><br><br><br>

	<!-- Form Name -->
	<div class="panel panel-default">
		<div class="panel-body">
			<h1>IMC</h1>

			<form class="form-horizontal" name="form" method="post" action="calcula.jsp" >
			<fieldset>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="peso">Peso:</label>
			  <div class="col-md-5">
			  <input id="peso" name="peso" type="text" placeholder="Digite seu peso em quilos." class="form-control input-md" required>Ex: 102

			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="altura">Altura:</label>
			  <div class="col-md-5">
			  <input id="altura" name="altura" type="text" placeholder="Digite sua altura em metros." class="form-control input-md" required>Ex: 1.89

			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="sexo">Sexo:</label>
			  <div class="col-md-5">
				<select id="sexo" name="sexo" required class="form-control">
					<option value="feminino" class="form-control">Feminino</option>
					<option value="masculino" >Masculino</option>
				</select>
			  </div>
			</div>

			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="resultado"></label>
			  <div class="col-md-5" align="right">
				<input id="Resultado" name="resultado" type="submit" class="btn btn-info" value="Resultado" />
			  </div>
			</div>

			</fieldset>
			</form>
		</div>
	</div>

</body>
</html>
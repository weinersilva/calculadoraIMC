<html>
<head>
	<title>Calculadora IMC</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	</head>
<body>

	<br><br><br><br>

	<!-- Form Name -->
	<div class="panel panel-default">
		<div class="panel-body">
			<h1>IMC</h1>

			<form class="form-horizontal" name="form" method="post" onSubmit="calculaimc()" >
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
<%
String pesoStr = request.getParameter("peso");
String alturaStr = request.getParameter("altura");
String sexo = request.getParameter("sexo");

int peso= pesoStr == null ? 0 : Integer.parseInt(pesoStr);
int altura = alturaStr == null ? 0 : Integer.parseInt(alturaStr);

int imc = peso / (altura * altura);

if (sexo.equals("feminino")) {
	if (imc < 19.1){
					out.print("Seu IMC �: "+imc +"\nVoc� est� abaixo do peso!");
				}else if (imc > 19.1 && imc <= 25.8){
						out.print("Seu IMC �: "+imc +"\nVoc� est� com peso normal!");
						}else if (imc > 25.8 && imc <= 27.3){
							out.print("Seu IMC �: " + imc +"\nVoc� est� com sobrepeso!");
								}else if (imc > 27.3 && imc <= 32.3){
									out.print("Seu IMC �: " + imc +"\nVoc� est� acima do peso!");
									}else if (imc > 32.3) {
										out.print("Seu IMC �: " + imc +"\nVoc� est� obesa!");	
									}
} else if (sexo.equals("masculino")) {
	if (imc < 20.7)
				{
					out.print("Seu IMC �: " + imc  +"\nVoc� est� abaixo do peso!");
				}else if (imc > 20.7 && imc <= 26.4){
						out.print("Seu IMC �: " + imc +"\nVoc� est� com peso normal!");
							}else if (imc > 26.4 && imc <= 27.8){
								out.print("Seu IMC �: " + imc +"\nVoc� est� com sobrepeso!");
									}else if (imc > 27.8 && imc <= 31.1){
										out.print("Seu IMC �: " + imc +"\nVoc� est� acima do peso!");
											}else if (imc > 31.2) {
												out.print("Seu IMC �: " + imc +"\nVoc� est� obeso!");
											}
				}

%>
</body>
</html>
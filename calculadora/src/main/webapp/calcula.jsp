<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Calculadora IMC</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script > 
		function retorna(){
			window.location="index.jsp";} 
	</script> 
</head>
<body>

	<br><br><br><br>

	<!-- Form Name -->
	<div class="panel panel-default">
		<div class="panel-body">
			<h1>IMC</h1>
<%
String pesoStr = request.getParameter("peso");
String alturaStr = request.getParameter("altura");
String sexo = request.getParameter("sexo");

Double peso = Double.parseDouble(pesoStr);
Double altura = Double.parseDouble(alturaStr);

Double imc = peso / (altura * altura);

if (sexo.equals("feminino")) {
	if (imc < 19.1){
					out.print("Seu IMC é: "+ imc +". Você está abaixo do peso!");
				}else if (imc > 19.1 && imc <= 25.8){
						out.print("Seu IMC é: " + imc +". Você está com peso normal!");
						}else if (imc > 25.8 && imc <= 27.3){
							out.print("Seu IMC é: " + imc +". Você está com sobrepeso!");
								}else if (imc > 27.3 && imc <= 32.3){
									out.print("Seu IMC é: "+ imc +". Você está acima do peso!");
									}else if (imc > 32.3) {
										out.print("Seu IMC é: "+ imc +". Você está obesa!");	
									}
} else if (sexo.equals("masculino")) {
	if (imc < 20.7)
				{
					out.print("Seu IMC é: "+ imc  +". Você está abaixo do peso!");
				}else if (imc > 20.7 && imc <= 26.4){
						out.print("Seu IMC é: "+ imc +". Você está com peso normal!");
							}else if (imc > 26.4 && imc <= 27.8){
								out.print("Seu IMC é: "+ imc +". Você está com sobrepeso!");
									}else if (imc > 27.8 && imc <= 31.1){
										out.print("Seu IMC é: "+ imc +". Você está acima do peso!");
											}else if (imc > 31.2) {
												out.print("Seu IMC é: "+ imc +". Você está obeso!");
											}
				}
 
%>
		</div>
		<input type="button" onclick="retorna();" value="Voltar" name="Voltar" class="btn btn-info" />
	</div>

</body>
</html>
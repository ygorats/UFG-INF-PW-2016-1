<html>

<head>
<title>C�lculo IMC</title>
</head>

<body>

<form>

	Seu peso: <input name="peso">
	<br><br>
	Sua altura: <input name="altura">
	<br><br>
	<button>Calcular IMC</button>

	<%
		//C�lculo do IMC
		String pesoStr = request.getParameter("peso");
		String alturaStr = request.getParameter("altura");
		
		if ((pesoStr == null) || (pesoStr == "")) pesoStr = "0";
		if ((alturaStr == null) || (alturaStr == "")) alturaStr = "1";
		
		double imc = Double.parseDouble(pesoStr) / (Math.pow(Double.parseDouble(alturaStr), 2));
	%>

</form> 

<h3><b>Seu IMC � de <%out.print(imc);%></b></h3>



</body>







</html>
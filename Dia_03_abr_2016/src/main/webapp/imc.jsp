<html>

<head>
<title>Cálculo IMC</title>
</head>

<body>

<form>

	Seu peso: <input name="peso">
	<br><br>
	Sua altura: <input name="altura">
	<br><br>
	<button>Calcular IMC</button>

	<%
	     
		//Cálculo do IMC
		String pesoStr = request.getParameter("peso");
		String alturaStr = request.getParameter("altura");
		
		if ((pesoStr == null) || (pesoStr == "")) pesoStr = "0";
		if ((alturaStr == null) || (alturaStr == "")) alturaStr = "1";
		
		double imc = Double.parseDouble(pesoStr) / (Math.pow(Double.parseDouble(alturaStr), 2));
		java.text.DecimalFormat df = new java.text.DecimalFormat("###.00");
		String imcStr = df.format(imc);
	%>

</form> 

<h3><b>Seu IMC é de <%out.print(imcStr);%></b></h3>



</body>







</html>
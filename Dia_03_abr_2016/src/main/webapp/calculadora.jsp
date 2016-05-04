
<html>

<head>

<title>Calculadora</title>

</head>
<br><br>
<h1>Calculadora</h1>
<br><br><br><br>

<form>

Operador 1: <input name="operador1">
<br><br>
Operando  : <input name="operando">
<br><br>
Operador 2: <input name="operador2">
<br><br>
<br>
<button>Calcular</button>

<%
	//Scriptlet
	String op1Str = request.getParameter("operador1");
	String operacao = request.getParameter("operando");	
	String op2Str = request.getParameter("operador2");
	
	
	if((op1Str == null) || (op1Str == "")) op1Str = "0";
	if((op2Str == null) || (op2Str == "")) op2Str = "0";
	if(operacao == null) operacao = "";
	
	int op2 =  Integer.parseInt(op2Str);
	int op1 = Integer.parseInt(op1Str);
	
	int resultado = 0;
	
	if(operacao.equals("+")){ resultado = op1 + op2;}
	if(operacao.equals("-")) resultado = op1 - op2;
	if(operacao.equals("*")) resultado = op1 * op2;
	if(operacao.equals("/")) resultado = op1 / op2;
%>


</form>

<h1><b>Resultado: <%out.print(resultado); %></b></h1>







<body>


</body>






</html>
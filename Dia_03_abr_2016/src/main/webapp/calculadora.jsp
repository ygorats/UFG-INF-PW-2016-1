<!DOCTYPE html>
<%@page import="servletjsp.Calculadora" %>
<html>

<head>

<title>Calculadora</title>

</head>

<h1>Calculadora</h1>
<br><br>

<form>

Operador 1: <input name="operador1">
<br><br>

Operando  : <input name="operando">
<br>


<input type="radio" name="operacao" id='+' checked/>Soma 

<input type="radio" name="operacao" id='-' >Subtração 

<input type="radio" name="operacao" id='/' >Divisão 

<input type="radio" name="operacao" id='*' >Multiplicação 


<br><br>
Operador 2: <input name="operador2">
<br><br>
<br>
<button>Calcular</button>

<%!
public String ObtemValor(String parametro, String padrao){
	
	if((parametro == null) || (parametro == "")) return padrao;
	
	return parametro;
}
	
	%>


<%
	//Scriptlet
		
	int op2 =  Integer.parseInt(ObtemValor(request.getParameter("operador2"), "0"));
	
	int op1 = Integer.parseInt(ObtemValor(request.getParameter("operador1"), "0"));

	String operacao = ObtemValor(request.getParameter("operando"), "+");
	
	int resultado = Calculadora.Calcular(op1, op2, operacao);

%>


</form>

<h2><b>Resultado: <%out.print(resultado); %></b></h2>



<body>


</body>



</html>
<!DOCTYPE html>
<%@page import="servletjsp.Calculadora" %>
<html>

<head>

<title>Calculadora</title>

</head>

<body>

<h1>Calculadora</h1>

<i>Foram inclusas algumas coisas, como: 
	<br>-> radio buttons
	<br>-> hints nos campos
	<br>-> atalho para sele��o da opera��o (veja os hints)
</i>
<br><br><br>

<form>

Operador 1: <input name="operador1" title="Forne�a o valor do primeiro operador"
 			   tabindex="1">
<br><br>

Opera��o: 
<input type="radio" name="operacao"                 value="+" 
  accesskey="+"    title="Pressione Alt+ ''+'' " tabindex="2" checked >Soma 

<input type="radio" name="operacao"                 value="-" 
  accesskey="-"    title="Pressione Alt+ ''-'' " tabindex="2">Subtra��o 

<input type="radio" name="operacao"                 value="/" 
  accesskey="/"    title="Pressione Alt+ ''/'' " tabindex="2">Divis�o 

<input type="radio" name="operacao" value="*" 
  accesskey="*"    title="Pressione Alt+ ''*'' " tabindex="2">Multiplica��o 

<br><br>
Operador 2: <input name="operador2" title="Forne�a o valor do segundo operador"
               tabindex="3">
<br><br><br>

<button title="Calcule essa baga�a" tabindex="4">Calcular</button>

<%! //Scriptlet Especial
public String ObtemValor(String parametro, String padrao){
	
	if((parametro == null) || (parametro == "")) return padrao;
	
	return parametro;
}	
	%>


<%
	//Scriptlet
		
	int op2 =  Integer.parseInt(ObtemValor(request.getParameter("operador2"), "0"));
	
	int op1 = Integer.parseInt(ObtemValor(request.getParameter("operador1"), "0"));

	String operacao = ObtemValor(request.getParameter("operacao"), "+");
	
	int resultado = Calculadora.Calcular(op1, op2, operacao);

%>

</form>

<h2><b>Resultado: <%out.print(resultado); %></b></h2>



</body>



</html>
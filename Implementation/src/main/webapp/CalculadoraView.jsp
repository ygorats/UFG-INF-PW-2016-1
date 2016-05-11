<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculadora com MVC/Servlet</title>
</head>
<body>

<table>
	<tr>
		<td> Operador 1:</td>
		<td> <input name="operador1" title="Forneça o valor do primeiro operador" tabindex="1"></td>
 	</tr>
	
	
	<tr>
		<td>Operação:</td>
		<td> 
			<input type="radio" name="operacao"                 value="+" 
  			accesskey="+"    title="Pressione Alt+ ''+'' " tabindex="2" checked >Soma 

			<input type="radio" name="operacao"                 value="-" 
  			accesskey="-"    title="Pressione Alt+ ''-'' " tabindex="2">Subtração 

			<input type="radio" name="operacao"                 value="/" 
  			accesskey="/"    title="Pressione Alt+ ''/'' " tabindex="2">Divisão 

			<input type="radio" name="operacao" value="*" 
	 		accesskey="*"    title="Pressione Alt+ ''*'' " tabindex="2">Multiplicação
	 	</td>
	
	<tr>
		<td> Operador 2:</td>
		<td> <input name="operador2" title="Forneça o valor do segundo operador" tabindex="3"></td>
 	</tr>
	

</table>

<h2><b>Resultado:${resultado}</b></h2>

<br><br>
</body>
</html>
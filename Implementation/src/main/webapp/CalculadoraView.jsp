
<!DOCTYPE html >
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Calculadora com MVC/Servlet</title>
	</head>
	<body>
	<form>
		<h1><em>CALCULADORA</em></h1>
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
		<br>
		<button title="Calcule essa bagaça" tabindex="4">Calcular</button>
		<br><br>
	</form>
	<h2><b>Resultado:${resultado}</b></h2>
	
	<br><br>
	</body>
</html>
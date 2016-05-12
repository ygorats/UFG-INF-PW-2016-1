
<!DOCTYPE html >
<html>
	<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cálculo do IMC com JSP</title>
	</head>
	<body>
		<h1><em>Cálculo do IMC com JSP</em></h1>
		
		<form>
		<div>
			<br><br>
			<table >
				<tr height="50">
					<td>Peso:</td>
					<td><input name="peso" >
				</tr>
				<tr height="50">
					<td>Altura:</td>
					<td><input name="altura" >
				</tr>
			</table>
			
			
		</div>
		<br>
		<button>Calcular</button>
		</form>
		<br>
		Resultado:  ${resultado} 

	</body>
	</html>
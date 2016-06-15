<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>
    <title>Aluno</title>
  </head>

  <body>
    <h1><a href="login">Login</a></h1>
    <form>
      <table>
        <tr>
          <td>Usuário</td>
          <td><input name="usuario"></td>
        </tr>
        <tr>
          <td>Senha:</td>
          <td><input type="password" name="senha"></td>
        </tr>
      </table>
      <button name="operacao" value="entrar">Entrar</button>
    </form>
    <b>${msg}</b>
  </body>

</html>
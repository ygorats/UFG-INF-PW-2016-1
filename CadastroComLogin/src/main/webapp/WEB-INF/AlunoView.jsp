<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>
    <title>Aluno</title>
  </head>

  <body>
    <h1><a href="aluno">Aluno</a></h1>
    <a href="logout">Logout</a>
    <br>
    <br>
    <form>
      <table>
        <tr>
          <td>Matrícula</td>
          <td><input name="matricula"></td>
        </tr>
        <tr>
          <td>Nome:</td>
          <td><input name="nome"></td>
        </tr>
      </table>
      <button name="operacao" value="incluir">Incluir</button>
      <button name="operacao" value="excluir">Excluir</button>
      <button name="operacao" value="alterar">Alterar</button>
    </form>
    <b>${msg}</b>
    <hr>
    Usuário: ${usuario}
  </body>

</html>
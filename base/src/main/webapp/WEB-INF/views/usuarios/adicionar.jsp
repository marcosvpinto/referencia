<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<!-- <link rel="stylesheet" type="text/css" href="estilo.css"> -->
		<title></title>
	</head>
	<body>
		<h2>Cadastro de Usuários</h2>
		<form action="adicionaUsuario" method="post">
			Nome: <input type="text" name="nome" /> <br/>
			Login: <input type="text" name="login" /> <br/>
			Senha: <input type="text" name="senha" /> <br/>
			<input type="submit" value="Cadastrar" />
		</form>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/estiloformulario.css">
<title>Recuperar Login</title>
</head>
<body>
	<h1>PÁGINA PARA RECUPERAR O LOGIN DO USUÁRIO</h1>
	<h2>APENAS ADMINISTRADORES PODEM FAZER ALTERAÇÕES NO SISTEMA</h2>
	<input type="button" value="Voltar" onclick="history.back()">
	<br>
	<div id="formulario">
		<form action="recuperalogin" method="post">
			<fieldset id="bordaformulario">
				<legend>Recuperar Login</legend>
				<table>
					<tr>
						<td>Usuário:</td>
						<td><input type="text" name="usuario"></td>
					</tr>
					<tr>
						<td>Login:</td>
						<td><input type="text" name="login"></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input type="text" name="senha"></td>
					</tr>
					<tr>
						<td align="left"><input type="submit" value="Alterar"></td>
						<td align="right"><input type="reset" value="Cancelar"></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/estiloformulario.css">
<title>Login do Sistema</title>
<!--  
<script type="text/javascript" src="js/validador.js"></script> -->
</head>
<body>
	<div id="formulario">
		<form action="../autenticacao" method="post">
			<fieldset id="bordaformulario">
				<legend>Login do Sistema:</legend>
				<table>
					<tr>
						<td>Usuário:</td>
						<td><input type="text" name="login" title="Insira o login!"></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input type="password" name="senha"
							title="Insira a senha!"><br></td>
					</tr>
					<tr>
						<td><input type="button" value="Cancelar"
							title="Cancelar login e para a página HOME"
							onclick="history.back()"></td>
						<td align="right"><input type="submit" value="Entrar"
							title="Entrar no sistema"></td>
						<td align="center"><a href="recuperalogin.jsp"
							class="recuperarsenha" title="Clique para recuperar login!">?</a></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>
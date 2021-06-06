<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/icon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	
	<div class="contact-add-form">
		<h1>Editar contato</h1>
		<form name="contato" action="update">
			<table>
				<tr>
					<td><input type="text" class="box1" name="idcon" id="box3"
						readonly value="<%out.println(request.getAttribute("idcon"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" class="box1" name="nome"
						value="<%out.println(request.getAttribute("nome"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" name="telefone"  class="box1" value="<%out.println(request.getAttribute("telefone"));%>" ></td>
				</tr>
				<tr>
					<td><input type="text" class="box1" name="email"
						value="<%out.println(request.getAttribute("email"));%>" ></td>
				</tr>

			</table>
			<input type="button" class="button-new-contact" value="Salvar"
				onclick="validar()">
				<input type="button" class="button-white-generics" value="Visualizar lista" onclick="main()">
		</form>
	</div>
	<script src="scripts/validador.js"></script>
	<script src="scripts/main.js"></script>
</body>
</html>
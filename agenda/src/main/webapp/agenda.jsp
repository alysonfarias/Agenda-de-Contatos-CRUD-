<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
    <%@ page import="model.JavaBeans"%>
    <%@ page import="java.util.ArrayList"%>
    <%
    	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
    %>
<!DOCTYPE html>
<html lang = "pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/icon.png">
<link rel="stylesheet" href="style.css">

</head>
<body>

	<div id="agenda">
	<h1>Agenda de Contatos</h1>
		<div class="main-option">
	<a href="novocont.html" class="button-new-contact" >Novo Contato</a>
	<a href="index.html" class="button-white-generics" ><img src="imagens/homepage.png" width="20%" class="homepage-icon"></a>
		</div>
	<table class="tabela">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Telefone</th>
			<th>E-mail</th>
			<th>Opções</th>
		</tr>
	</thead>
	<tbody>
		<%for (int i = 0; i< lista.size(); i++) { %>
		<tr>
			<td><%=lista.get(i).getIdcon()%></td>
			<td><%=lista.get(i).getNome()%></td>
			<td><%=lista.get(i).getTelefone()%></td>
			<td><%=lista.get(i).getEmail()%></td>
			<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="button1"><img src="imagens/editar.png" alt="editar icon"></a>
			<a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" ><img src="imagens/remover.png" width="25%" alt="remover icon"></a></td>
		</tr>
		<%} %>
	</tbody>
	</table>
	</div>
	<script src="scripts/confirmar.js"></script>
</body>
</html>
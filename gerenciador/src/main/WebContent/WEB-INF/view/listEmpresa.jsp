<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

		Usuario Logado: ${usuarioLogado.login}
		<br>
		<br>
 		<ul>
			<c:forEach items="${lista}" var="empresa">
				<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yy"/> 
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
				<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
				</li>
			</c:forEach>
		</ul>
		<a href="/gerenciador/entrada?acao=NovaEmpresaForm">cadastrar empresa</a>
		<br>
		<a href="/gerenciador/entrada?acao=Logout">Logout</a>
</body>
</html>
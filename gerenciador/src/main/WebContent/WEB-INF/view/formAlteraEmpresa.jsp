<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/entrada" var="linkServlet"/>
<!DOCTYPE html>
<html>
<body>
	<form action="${linkServlet}" method="post">
		<li>Nome: <input type="text" name="nome"  value="${empresa.nome}"/></li>
		<li>Data da abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yy"/>"/></li>
		<input type="hidden" name="id" value="${empresa.id}"/>
		<input type="hidden" name="acao" value="AlteraEmpresa"/>
		<input type="submit" />
	</form>
</body>
</html>
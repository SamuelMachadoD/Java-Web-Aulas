<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/entrada" var="linkServlet"/>
<!DOCTYPE html>
<html>
<body>
	<form action="${linkServlet}" method="post">
		Nome: <input type="text" name="nome"/>
		Data da abertura: <input type="text" name="data"/>
		<input type="hidden" name="acao" value="NovaEmpresa"/>
		<input type="submit" />
	</form>
</body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h4>Enrollment No: 130050131052</h4>
<h4>Testing IF TOKEN Core Tag</h4>
<c:setvar="salary" scope="session" value="${2000*2}"/>
<c:if test="${salary > 2000}">
<p>My salary is: <c:out value="${salary}"/><p>
</c:if>
</body>
</html 

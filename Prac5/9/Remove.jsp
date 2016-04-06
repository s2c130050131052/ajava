
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
<h4>Testing Remove Core Tag</h4>
<c:setvar="Fruit" scope="session" value="${'Apple'}" />
<p>Before Remove Value: <c:out value="${Fruit}" /></p>
<c:removevar="Fruit" />
<p>After Remove Value: <c:out value="${Fruit}" /></p>
</body>
</html>

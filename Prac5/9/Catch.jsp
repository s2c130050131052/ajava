

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<%@tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h4>Enrollment No: 130050131052</h4>
<h4>Testing Catch Core Tag</h4>
<c:catchvar ="catchException">
<% inti = 10/0;%>
</c:catch>
<c:if test = "${catchException != null}">
<p>The exception is : ${catchException} <br />
        There is an exception: ${catchException.message}</p>
</c:if>
</body>
</html>

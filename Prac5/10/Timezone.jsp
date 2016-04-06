
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ tagliburi="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<title>JSTL  Tag</title>
</head>

<body>
<h1>Enrollment No:130050131052</h1>
<h4>Testing timezone Tag</h4>
 Date in the GMT-8 time zone:  

<c:setvar="today" value="<%=new java.util.Date()%>" />
<c:setvar="timeZone" value="GMT-8"/><fmt:timeZone value="${timeZone}">
<strong>
<fmt:formatDate value="${today}" timeZone="${timeZone}" type="both" />
</strong>
</fmt:timeZone>
</body>
</html>

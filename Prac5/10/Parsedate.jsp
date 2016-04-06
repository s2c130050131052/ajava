
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<title>JSTL Tag</title>
</head>
<body>
<h1>Enrollment No:130050131052</h1>
<h4>Testing parseDate Tag</h4>
<h3>Date Parsing:</h3>
<c:setvar="now" value="20-03-2016" />
<fmt:parseDate value="${now}" var="parsedEmpDate" pattern="dd-MM-yyyy" />
<p>Parsed Date: <c:outvalue="${parsedEmpDate}" /></p>
</body>
</html>
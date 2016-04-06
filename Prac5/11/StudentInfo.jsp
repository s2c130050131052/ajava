
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<html>
<head>
<title>Info</title>
</head>
<body>

<sql:setDataSourcevar="con" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/s2a130050131052"
user="root"  password=""/>
<%
Date DoB = new Date("2001/09/12");
intstudentId = 103;
%>
<sql:updatedataSource="${con}" var="count">
   UPDATE student SET dob = ? WHERE Id = ?
<sql:dateParam value="<%=DoB%>" type="DATE" />
<sql:param value="<%=studentId%>" />
</sql:update>
<sql:querydataSource="${con}" var="result">
   SELECT * from student;
</sql:query>
<table border="1">
<tr>
<th>Emp ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>DoB</th>
</tr>
<c:forEachvar="row" items="${result.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.first}"/></td>
<td><c:out value="${row.last}"/></td>
<td><c:out value="${row.dob}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>

<%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*,javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<c:setvar="id" value="${param.id}"/>
<c:setvar="name" value="${param.bookname}"/>
<c:setvar="author" value="${param.author}"/>
<sql:setDataSourcevar="con" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/s2a130050131052" user="root" password=""/>
<sql:updatedataSource="${con}" var="count">
insert into bookinfo(id,bookname,author) values(?,?,?); 
<sql:param value="${id}"/>
<sql:param value="${name}"/>
<sql:param value="${author}"/>
</sql:update>
<sql:querydataSource="${con}" var="rs">select * from bookinfo;</sql:query>
<h1 align="center">Book Details</h1>
<table align="center" border="1">
<tr>
<th>Id</th>
<th>Book Name</th>
<th>Author</th>
</tr>
<c:forEachvar="row" items="${rs.rows}">
<tr>
<td><c:out value="${row.id}"/></td>
<td><c:out value="${row.bookname}"/></td>
<td><c:out value="${row.author}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>




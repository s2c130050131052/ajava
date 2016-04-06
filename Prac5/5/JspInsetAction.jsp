<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLClientInfoException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert Page</title>
</head>
<body>
<script>
<%final String JDBC_DRIVER = "org.postgresql.Driver";
final String DB_URL = "jdbc:postgresql://127.0.0.1:5432/s2a130050131052";
final String USER = "postgres";
final String PASS = "1234";
Connection conn;
Statement stmt;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);
stmt = conn.createStatement();
String sql = "insert into employee values("+session.getAttribute("id")+",'"+session.getAttribute("name")+"')";
int i=0;
try{
i=stmt.executeUpdate(sql); 
}catch (SQLException e){
	e.printStackTrace();
	i=0;	
}
if(i==1)
{
%>alert("Inserted successfully");<%} else { %>alert("Insert Failed!! ID already exists");<%} %>
</script>
</body>
</html>

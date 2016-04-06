
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h4>Enrollment No: 130050131052</h4>
<formmethod="GET">
<center>
Name:<inputtype="text"name="name"placeholder="Enter Name"/><br/><br/>
<inputtype="submit"value="Submit">
</center>
</form>
<%
out.print(request.getParameter("name"));
%>
</body>
</html>

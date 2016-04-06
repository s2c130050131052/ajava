

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<metahttp-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h4>Enrollment No: 130050131052</h4>
<h4>Testing Response object</h4>

<%
Booleanx=response.isCommitted();
if(x==true){
out.println("Response is committed");
        }
else{
out.println("Response is not committed");

        }
%>
</body>
</html>

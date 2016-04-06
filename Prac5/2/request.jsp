<html>
<head><title>Methods of request object</title></head>
<body>

<h2>130050131052</h2>

<table border=1>
<tr>
<td>Request Method</td>
<td><% out.println(request.getMethod()); %></td>
</tr>
<tr>
<td>Request URI</td>
<td><% out.println(request.getRequestURI()); %></td>
</tr>
<tr>
<td>Request Protocol</td>
<td><% out.println(request.getProtocol()); %></td>
</tr>
<tr>
<td>Path information associated with the URL</td>
<td><% out.println(request.getPathInfo()); %></td>
</tr>
<tr>
<td>Translates the extra path information into a real file system</td>
<td><% out.println(request.getPathTranslated()); %></td>
</tr>
<tr>
<td>Request URL after the path</td>
<td><% out.println(request.getQueryString()); %></td>
</tr>
<tr>
<td> Content Length</td>
<td><% out.println(request.getContentLength()); %></td>
</tr>
<tr>
<td> Content Type</td>
<td><% out.println(request.getContentType()); %></td>
</tr>
<tr>
<td> Server Name</td>
<td><% out.println(request.getServerName()); %></td>
</tr>
<tr>
<td> Server port No.</td>
<td><% out.println(request.getServerPort()); %></td>
</tr>
<tr>
<td> Remote User Name</td>
<td><% out.println(request.getRemoteUser()); %></td>
</tr>
<tr>
<td>Remote User Address </td>
<td><% out.println(request.getRemoteAddr()); %></td>
</tr>
<tr>
<td>Remote Host Full Name</td>
<td><% out.println(request.getRemoteHost()); %></td>
</tr>
<tr>
<td>Name of the authentication scheme</td>
<td><% out.println(request.getAuthType()); %></td>
</tr>
</table>
</body>
</html>
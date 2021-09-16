<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGN IN</title>
</head>
<body>
	<h1>the result of sign in</h1>
	<% 
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		if(id.equals("admin") && password.equals("1234")){
	%>
		<%= "OK" %>
	<%
	} else {
										//	key=value
		response.sendRedirect("myform.jsp?signin=fail");
	}
	%>

</body>
</html>
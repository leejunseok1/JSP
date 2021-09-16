<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
label {
	display: inline-lcok;
	width: 150px;
}
</style>
</head>
<body>
	<div>
		<%
			String signin = request.getParameter("signin");
		if (signin != null) {
		%>
		<p>not valid<p>
		<%
			}
		%>
	</div>
	<form action="myform.result.jsp" method="post">
		<div>
			<label for="user-id">id</label> <input id="user-id" name="id"
				type="text" placeholder="input your id"><br>
		</div>
		<div>
			<label for="user-password">password</label> <input id="user-password"
				name="password" type="password"><br>
		</div>
		<input type="submit" value="submit">
	</form>
</body>
</html>
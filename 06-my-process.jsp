<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답페이지</title>
</head>
<body>

<%
	response.addHeader("Content-Dispostion", "attachment; filename='hello.html'");
	//다운로드가 됨.
	response.addHeader("Content-Type", "application/pdf");
%>
헬루
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 문서의 제목</title>
</head>
<body>
<%
	String bookTitle = "JSP 프로그래밍";
	String author = "이준석";
	//자바코드를 적을수 있는 공간
%>
<p><strong><%= bookTitle %></strong>(<%= author %>)입니다. </p>
<!--%= 문자열 표현 -->
</body>
</html>
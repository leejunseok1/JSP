<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 멤버 정보</title>
</head>
<body>

<%
	String memberId = (String)session.getAttribute("MEMBERID");
	String name = (String)session.getAttribute("NAME");
	out.println(memberId);
	out.println(name);
%>
</body>
</html>
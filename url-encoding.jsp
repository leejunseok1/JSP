<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL 인코딩 디코딩 연습</title>
</head>
<body>

<%
	String encoded = URLEncoder.encode("한글을 utf-8 인코딩", "UTF-8");
%>
	<%= encoded %>
<%
	String decoded = URLDecoder.decode(encoded, "UTF-8");
%>
<%= "같은 캐릭터셋 UTF-8로 디코딩한 문자열: " + decoded %>

</body>
</html>
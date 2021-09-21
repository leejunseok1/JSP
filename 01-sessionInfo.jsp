<%@page import="java.text.SimpleDateFormat"%>
<%@page session = "true" %>
<!-- 세션 객체를 만들어서 사용하겠다 -->
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Date time = new Date();
	SimpleDateFormat formatter = 
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보</title>
</head>
<body>
세션 ID: <%= session.getId() %> <br>
<!-- 고유한 아이디값이 있음 -->
<%
	time.setTime(session.getCreationTime());
	//최초로 접속한 시간을 얻어내수 있음
	//생성된 시간을 알려달라
%>

세션 생성시간 : <%= formatter.format(time)%> <br>
<%
	time.setTime(session.getLastAccessedTime());
	//마지막으로 접근한 시간을 얻어내라
%>
최근접근시간 <%= formatter.format(time) %>
</body>
</html>
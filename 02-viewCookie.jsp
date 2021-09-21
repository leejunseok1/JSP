<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 목록</title>
</head>
<body>
쿠키 목록<br>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for( int i = 0; i < cookies.length; i++){

//서버에서 응답을 보내줄때 해당하는 쿠키를 만들어라
//클라이언트 입장에서는 쿠키를 거부할수 있음
// 중요한 정보를 담는것은 쿠키에 하면 안됨.

%>
	<%= cookies[i].getName() %>=
	<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %><br>
<%
		}
	} else{
%>	
쿠키가 존재하지 않습니다
<%
	}
%>


</body>
</html>
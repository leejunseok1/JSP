<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>
<% 
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균","utf-8"));
//쿠키에서는 한글표현 x 인코딩 시켜줘야함.
	cookie.setMaxAge(60*60*24);
	//쿠키를 보관할 기간(초단위)
	response.addCookie(cookie);
	// 응답에 실어서 줘야함. 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body> 


<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"

</body>
</html>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자열 길이</title>
</head>
<body>
	<% 
	String str = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(Cookie c : cookies){
			if(c.getName().equals("str")){
				str = URLDecoder.decode(c.getValue(), "utf-8");
				//쿠키에 있는 값을 꺼내서 str에 넣는다
				//str에 넣었으니 value값으로 감
				//입력하고 전송했을때 값이 남아있음.
				// 인코딩해서 넣었으니 디코딩도 해줘야 한글이 안깨짐
			}
		}
	}
	%>
	<form action = "04-string-process.jsp" method="post">
	
		<!-- <input type="text" name="str" placeholder="문자열을 입력하세요" > -->
		<input type="text" name="str" placeholder="문자열을 입력하세요" value="<%= str %>">
		<div>
		<input type="checkbox" name="save-cookie" value="ok">기억하기
		</div>
		
		<input type="submit">
	</form>
</body>
</html>
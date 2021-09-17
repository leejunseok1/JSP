<%@page import="java.util.Enumeration"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 가격 총합 페이지</h1>
	<%
		Map<String,Integer> map = new HashMap<>();
		map.put("spam", 3000);
		map.put("hongsam", 10000);
		map.put("tuna", 2500);
		
		int sum = 0;
		String[] names = request.getParameterValues("goods");
		for (String name : names){
			
			if(map.containsKey(name)) {
				sum += map.get(name);
			}
		}
	%>
	<p>총합 : <%= sum %></p>
	
	<a href="05-goos.jsp">처음으로</a>
</body>
</html>
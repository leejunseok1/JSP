<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼테스트</title>
</head>
<body>
	<b>request.getParameter() Using Method</b><br>
	 name parameter =<%= request.getParameter("name") %><br> 
	 address parameter =<%= request.getParameter("address") %>
	<p>
	<b>request.getParameterValues() Using Method</b><br>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null){
	for(int i= 0; i < values.length;i++){
%>
	<%= values[i]%>
<% 
		} 
	}
%>
	<p>
	<b>request.GetParameterNames() Using Method</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<%
	}
%>
<p>
<b>request.getParameterMap() Using Method</b><br>
<% 
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null){
%>
name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>
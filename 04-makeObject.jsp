<%@page import="member.MemberInfo"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<%-- <jsp:useBean id="member" scope="request" class="member.MemberInfo" />
<jsp:setProperty name="member" property="id" value="skymin"/>
<jsp:setProperty name="member" property="name" value="박민"/> --%>
<%
	MemberInfo member = new MemberInfo();
	member.setId("madvirus");
	member.setName("최범균");
	
	request.setAttribute("member", member);
%>
<jsp:forward page="/05-useObject.jsp" />	
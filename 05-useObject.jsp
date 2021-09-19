<%@page import="member.MemberInfo"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<%-- <jsp:useBean id="member" scope="request"
             class="member.MemberInfo" /> --%>
<html>
<head><title>인사말</title></head>
<body>

<%-- <%= member.getName() %> (<%= member.getId() %>) 회원님 --%>
<%-- <jsp:getProperty name="member" property="id" />
<jsp:getProperty name="member" property="name" /> --%>
<!-- 필드값을 꺼내올수 있음  멤버라는 이름의 아이디라는 필드값을  -->
<%
	MemberInfo member = (MemberInfo) request.getAttribute("member");
%>
	<%= member.getId() %>
	<%= member.getName() %>
안녕하세요.

</body>
</html>
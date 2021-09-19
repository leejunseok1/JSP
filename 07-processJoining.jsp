<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");

	//MemberInfo memberInfo = new MemberInfo();
	//memberInfo.setId(request.getParameter("id"));
	//memberInfo.setName(request.getParameter("name"));
	//memberInfo.setEmail(request.getParameter("email"));
%>
<jsp:useBean id="memberInfo" class="member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<%-- <jsp:setProperty name="memberInfo" property="password"
				 value="<%= memberInfo.getId() %>" /> --%>
<html>
<head><title>가입</title></head>
<body>
z
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="memberInfo" property="id" /></td>
	<td>암호</td>
	<td><jsp:getProperty name="memberInfo" property="password" /></td>
</tr>
<tr>
<tr>
    <td>이름</td>
    <td><jsp:getProperty name="memberInfo" property="name" /></td>
    <td>이메일</td>
    <td><jsp:getProperty name="memberInfo" property="email" /></td>
</tr>
</table>

</body>
</html>
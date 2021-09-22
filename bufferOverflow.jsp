<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" %> <!-- 버퍼 크기를 1KB로 설정한다. -->
<%@ page errorPage = "viewErrorMessage.jsp" %> <!-- 에러페이지를 지정한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼 플러시 이후 에러 발생 결과</title>
</head>
<body>

<% for(int i = 0; i<300; i++){ out.println(i); } %>
<!-- 1KB를 초과하는 데이터를 툴력해서 버퍼가 플러시되도록 한다. 이 과정에서 200응답 코드가 전송 -->
<%= 1 / 0 %>
<!-- 자바에서는 0으로 나누면 ArithmeticException이 발생한다. 익셉션이 발생하므로 errorPage로 지정한 viewErrorMessage.jsp를 사용한다. -->
</body>
</html>
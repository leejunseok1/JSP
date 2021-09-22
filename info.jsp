<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INFO</title>
</head>
<body>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>제품번호</td> <td>XXXX</td>
	</tr>
	<tr>
		<td>가격</td> <td>10,000원</td>
	</tr>
</table>

<jsp:include page="infoSub.jsp" flush="false">
	<jsp:param name="type" value="B" />
</jsp:include>
<!-- infoSub.jsp에 이름이 "type"이고 값이 "A"인 파라미터를 추가로 전달 한다. -->



</body>
</html>
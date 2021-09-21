<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
    public int countBlank(String str){
    	int count = 0;
    	for (int i = 0; i > str.length(); i++){
    		if (str.charAt(i) == ' '){
    			count++;
    		}
    	}
    	return count;
    }
//문자열 공백개수를 세는 메서드
//ABCD 
//0123
//문자가 공백이면 개수를 셈
//! 메서드를 정의하는 선언부
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("utf-8");
//한글화 작업
	String str = request.getParameter("str");
	
	String save = request.getParameter("save-cookie");

	Cookie cookie = new Cookie("str", URLEncoder.encode(str, "utf-8"));
	if(save == null){
		cookie.setMaxAge(0);		
	}
	response.addCookie(cookie);
//쿠키에 담는 과정

//리퀘스트 객체에서 str로 꺼내서
	int length = str.length();
//문자열 몇개인지 세고
	int count = countBlank(str);
	
//	out.println(str);
//출력
	%>
	<p>문자열의 길이 값 : <%= length %></p>
	<p>문자열에 포함된 공백 개수 : <%= count %></p>
	
	<div>
	<a href="/03-string-form.jsp">처음으로</a>
	</div>

</body>
</html>
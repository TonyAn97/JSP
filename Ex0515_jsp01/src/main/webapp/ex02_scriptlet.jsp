<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	//선언부 : 자바코드를 사용하는 영역(전역변수 개념)
	int n1 = 0; 
%>

<%
	//스크립트릿 : 지역변수 개념
	int n2 = 0;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<%= "n1 : " + n1++ %><br>
		<%= "m2 : " + n2++ %>
	</body>
</html>
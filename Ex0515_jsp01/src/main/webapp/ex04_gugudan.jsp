<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			table{border-collapse: collapse;}
			tr{height: 30px;}
			td{width: 110px;
			   text-align: center;}
		</style>
	</head>
	
	<body>
		<!--
		 html 주석 : 컴파일시에 자바코드로 변환된다
		 id:abc / pw:1234
		-->
		
		<%--
		 jsp 주석: 컴파일시에 자바코드로 변환되지 않는다
		 id : abc / pw:1234		
		--%>
		<table border="1">
		<% 
		for(int i = 1; i <= 9; i++) {%>	
		<tr>
		<%
		for(int j = 2; j <= 9; j++){%> 
			
			<td><%=j + "X" + i + "=" + (i * j) %></td>
			
		<%}%>
		</tr>
		<%}%>
		</table>
		
	</body>
</html>
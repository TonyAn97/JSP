<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//post방식으로 한글이 전돨디면 깨져서 넘어온다.
	//이를 방지하기위해 utf-8로 인코딩을 해야한다
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String tel = request.getParameter("tel");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<table border="1">
			<tr>
				<th>이름</th>
				<td><%= name %></td>
			</tr>
			
			<tr>
				<th>나이</th>
				<td><%= age %></td>
			</tr>
			
			<tr>
				<th>전화</th>
				<td><%= tel %></td>
			</tr>
			
		</table>
		
		<input type="button" value="확인1" onClick="location.href='ex02_param_input.jsp'"><br>
		
		<input type="button" value="확인2" onclick="history.back()"> <br>
		
		<input type="button" value="확인3" onclick="history.go(-1)">
		
	</body>
</html>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

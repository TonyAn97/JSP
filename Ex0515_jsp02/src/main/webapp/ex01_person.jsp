<%@page import="java.util.ArrayList"%>
<%@page import="vo.PersonVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//DB에서 조회를 완료했다고 치고, 결과를 담고있는 list를 준비
	List<PersonVo> pList = new ArrayList<PersonVo>();

	PersonVo p1 = new PersonVo();
	p1.setName("홍길동");
	p1.setAge(30);
	p1.setTel("010-1234-5678");

	PersonVo p2 = new PersonVo();
	p2.setName("임길순");
	p2.setAge(25);
	p2.setTel("010-1234-5679");
	
	pList.add(p1);
	pList.add(p2);	
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		:::개인정보 목록 :::
		<table border="1">
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>전화번호</th>
			</tr>
			
			<%for(int i = 0; i < pList.size(); i++){ %>
				<tr>
					<td><%= pList.get(i).getName() %></td>
					<td><%= pList.get(i).getAge() %></td>
					<td><%= pList.get(i).getTel() %></td>
				</tr>
			<%} %>
			
			
			<%-- 
			<tr>
			<td><%= pList.get(0).getName() %></td>
			<td><%= pList.get(0).getAge() %></td>
			<td><%= pList.get(0).getTel() %></td>
			</tr>
			--%>
			
		</table>
	</body>
</html>
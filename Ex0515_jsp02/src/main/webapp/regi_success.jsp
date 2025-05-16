<%@page import="java.util.ArrayList"%>
<%@page import="vo.SonVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!List<SonVO> sList = new ArrayList<SonVO>(); %>
    
<%
	//post방식 전송이기 때문에 한글이 있을 시 깨짐 방지
	request.setCharacterEncoding("utf-8");

	//HTML 폼에서 사용자가 입력한 "id" 값을 가져와서 문자열 변수 id에 저장
	String id = request.getParameter("id");
	// HTML 폼에서 사용자가 입력한 "pwd" 값을 가져와서 문자열 변수 pwd에 저장
	String pwd = request.getParameter("pwd");
	// HTML 폼에서 사용자가 입력한 "age" 값은 문자열(String)이므로,
	// 숫자(int)로 바꾸기 위해 Integer.parseInt()를 사용
	// 그 결과를 변수 age에 저장
	int age = Integer.parseInt(request.getParameter("age")); 
	
	//세션에서 기존 리스트 가져오기
	SonVO sv = new SonVO();
	sv.setId(id);
	sv.setPwd(pwd);
	sv.setAge(age);
	sList.add(sv);
	/* if(sList == null){
		sList = new ArrayList<SonVO>();
	}
	
	//입력값이 있을 때만 추가
	if(id != null && pwd != null){
		sList.add(e)
		SonVO son = new SonVO(sList);
	} */
	
%>
    

    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form>
		<table border="1">
			<tr>
				<th>아이디</th>			
				<th>비번</th>			
				<th>나이</th>			
			</tr>
		<%for(int i = 0; i < sList.size(); i++){%>
			<tr>
				<td><%= sList.get(i).getId() %></td>
				<td><%= sList.get(i).getPwd() %></td>
				<td><%= sList.get(i).getAge() %></td>
			</tr>
			<% } %>
		</table>
		
		<!-- 테이블 표 하단에 확인 버튼 생성 후 클릭시 test_join 페이지로 새창을 열어 들어감 -->
			<input type="button" value="확인" onClick="location.href='test_join.jsp'">
		</form>
	</body>
</html>
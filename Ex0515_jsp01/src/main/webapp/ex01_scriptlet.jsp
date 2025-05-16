<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//스크립트릿(scrioptlet) : jsp에서 자바코드를 사용하고자 할 때 지정하는 영역
	String ip = request.getRemoteAddr();
	String name = "홍길동";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		ip : <%= ip %><br>
		이름 : <%= name %>
		<hr>
		<p>&lt;%@ 내용 %&gt; : jsp헤더 - 페이지 생성시 인코딩, import등을 설정하기 위해 반드시 필요한 영역</p>
		
		<p>&lt;% 내용(자바코드) %&gt; :
		스크립트 릿 - jsp에서 자바코드를 써야할때 지정하는 영역</p>
		
		<p>&lt;%= 변수명 %&gt; : 스크립트릿의 변수를 출력하는 출력코드</p>
	</body>
</html>
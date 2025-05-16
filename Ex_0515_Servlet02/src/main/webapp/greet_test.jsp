<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	
	<body>
		<form action="greet.do">
			<input type="radio" name="nation" value="kor">한국어<br>
			<input type="radio" name="nation" value="eng">영어<br>
			<input type="radio" name="nation" value="jpn">일본어<br>
			
			<input type='submit' value="확인하기">
		</form>
	</body>
</html>
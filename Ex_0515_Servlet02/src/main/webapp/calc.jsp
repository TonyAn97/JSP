<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script>
	function myClick(f) {
		let su1 = f.su1.value.trim();
		let su2 = f.su2.value.trim();
		
		let num_patt = /^[0-9]*$/;
		//수1이 정수 구조가 아니면
		if(!num_patt.test(su1) || su1 == ''){
			alert("첫번째 수를 입력하세요");
			return;
		}
		if(!num_patt.test(su2) || su2 == ''){
			alert("두번째 수를 입력하셈");
			return;
		}
		
		//su1, su2에 문제가 없다면 서버로 값을 전달
		f.submit();
	}
	</script>
	</head>
	
	<body>
		<form action="calc.do">
		수1 : <input type="text" name="su1"><br>
		수2 : <input type="text" name="su2"><br>
		<input type="button" value="확인" onclick="myClick(this.form);">
		</form>
	</body>
</html>
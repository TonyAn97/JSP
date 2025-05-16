<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script>
			function send1(f) {
				let name = f.name.value;
				let age = f.age.value;
				let tel = f.tel.value;
				
				if(name === ''){
					alert("이름을 입력하세요");
					return;
				}
				if(age === ''){
					alert("나이를 입력하세요");
					return;
				}
				if(tel === ''){
					alert("전화번호를 입력하세요");
					return;
				}
				f.method = "post";
				f.submit();
			}
		
		</script>
	</head>
	
	<body>
		<form action="ex02_result.jsp">
			이름 : <input name="name"><br>
			나이 : <input name="age"><br>
			전화 : <input name="tel"><br>
			<input type="button" value="확인" onClick="send1(this.form);">
		</form>
	</body>
</html>
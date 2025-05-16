<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script>
		//유효성 검사
			function send1(f) {
			//form태그에 있는 값들을 변수에 저장
				let id = f.id.value;
				let pwd = f.pwd.value;
				let age = f.age.value;
				
				if(id === ''){
					alert("아이디를 입력하세요");
					return;
				}
				if(pwd === ''){
					alert("비밀번호를 입력하세요");
					return;
				}
				if(age === ''){
					alert("나이를 입력하세요");
					return;
				}
				//전송방식 post 지정
				f.method = "post";
				//form을 자바스크립트로 전송함
				f.submit();
				
			}
		
		</script>
		
	</head>
	
	<body>
		<form action="regi_success.jsp">
			ID : <input name="id"><br>
			PWD : <input name="pwd"><br>
			AGE : <input name="age"><br>
			<input type="button" value="가입하기" onClick="send1(this.form);">
		</form>
		
	</body>
</html>
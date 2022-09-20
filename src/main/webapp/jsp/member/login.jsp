<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	
	<form action="doLogin" method="post">
		<div>
			아이디 : <input type="text" name="loginId" placeholder="아이디를 입력해주세요." />
		</div>
		<div>
			비밀번호 : <input type="text" name="loginPw" placeholder="비밀번호를 입력해주세요." />
		</div>
		<div>
			<button type="submit">로그인</button>
		</div>
	</form>
</body>
</html>
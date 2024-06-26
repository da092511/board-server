<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/style/form-login.css">
<script src="/resources/script/validation-join.js"></script>
</head>
<jsp:include page="/header"></jsp:include>
<body>
<h2>로그인</h2>
	<form method="POST" action="/loginPro">
		<div>
			<input type="text" id="id" name="id" placeholder="아이디">
			<input type="password" id="password" name="password" placeholder="비밀번호">
		</div>
		<div class="error-container">
			<p class="error-msg" id="error-msg-id">* 아이디: 필수 정보입니다.</p>
			<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 정보입니다.</p>
		</div>
		<input type="submit" value="회원가입">
	</form>
</body>
<jsp:include page="/footer"></jsp:include>
</html>
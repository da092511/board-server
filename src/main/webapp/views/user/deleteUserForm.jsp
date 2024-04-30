<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/style/form-login.css">
<title>Insert title here</title>
</head>
<jsp:include page="/header"></jsp:include>
<body>
 	<section id="root">
		<h2>회원 탈퇴</h2>
		<form method="POST" action="/deleteUserPro">
			<div>
				<input type="text" id="id" name="id" value="${user.id}" disabled>
				<input type="password" id="password" name="password" placeholder="비밀번호">
			</div>
			<div class="error-container">
				<p class="error-msg" id="error-msg-password">* 비밀번호: 필수 입력.</p>
			</div>
			<input type="submit" value="회원탈퇴">
		</form>
	</section>
</body>
</html>
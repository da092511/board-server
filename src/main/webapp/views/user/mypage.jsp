<%@page import="borderServer.user.UserResponseDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<jsp:include page="/header"></jsp:include>
<body>
	<section id="root">
	<%
	//UserResponseDto user = (UserResponseDto) session.getAttribute("user");
	//String userName = user.getName();
	%>
	
	<h1>${user.name}님 환영합니다!</h1>
	
	<button onclick="location.href='/updateUser'">회원정보 수정</button>
	<button onclick="location.href='/deleteUser'">회원 탈퇴</button>
	</section>
	
</body>
<jsp:include page="/footer"></jsp:include>
</html>
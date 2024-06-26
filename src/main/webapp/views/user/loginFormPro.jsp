<%@page import="borderServer.user.UserResponseDto"%>
<%@page import="borderServer.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
	// 파라미터로 전달 받은 값 가져오기
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	// Boolean.parseBoolean(request.getParameter("agree"));
	
	// Backend 에서 전달받은 데이터에 대한 유효성 검증
	
	boolean isValid = true;
	
	
	if(id == null || id.equals(""))
		isValid = false;
	else if(password == null || password.equals(""))
		isValid = false;
	
	// Processing Page 에서는 사용자에게 보여주는 화면을 작성하지 않음
	// 요청에 대한 응답 처리를 작성
	// 1) 페이지에 대한 이동처리 (흐름을 제어)
	if(isValid){
		// 연동된 데이터 베이스로부터 		(UserDao)
		// 유저의 정보를 조회하고, 		(findUserByIdAndPassword) user 리턴
		// 정보가 일치하면				(return된 UserResponseDto가 null이 아니면)
		// 로그인 처리 후, 페이지 이동		(jsp 내장객체 중 session에 유저정보 저장)(브라우저 창이 닫히기 전까지)

		UserDao userDao = UserDao.getInstance();
		UserResponseDto user = userDao.findUserByIdAndPassword(id,password);
		
		if(user != null){
			session.setAttribute("user", user);
			response.sendRedirect("/mypage");
		}
		else
			response.sendRedirect("/login");
	}
	else
		response.sendRedirect("/login");
	
%>
</body>
</html>
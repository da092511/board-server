<%@page import="borderServer.user.UserRequestDto"%>
<%@page import="borderServer.user.UserResponseDto"%>
<%@page import="borderServer.user.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
		
	UserDao userDao = UserDao.getInstance();
	
	String password = request.getParameter("password");
		
	UserResponseDto user = (UserResponseDto) session.getAttribute("user");
	String id = user.getId();
	
	//패스워드가 일치하면 삭제처리
	UserRequestDto userDto = new UserRequestDto();
	userDto.setId(id);
	userDto.setPassword(password);
	
	boolean result = userDao.deleteUser(userDto);
	
	if(result){
		session.removeAttribute("user");
		response.sendRedirect("/");
	}else 
		response.sendRedirect("/deleteUser");
%>
</body>
</html>
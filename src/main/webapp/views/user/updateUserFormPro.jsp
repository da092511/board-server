<%@page import="borderServer.user.UserRequestDto"%>
<%@page import="borderServer.user.UserDao"%>
<%@page import="borderServer.user.UserResponseDto"%>
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

UserResponseDto user =(UserResponseDto) session.getAttribute("user");

String password = request.getParameter("password");

//패스워드 검증 후
if(userDao.findUserByIdAndPassword(user.getId(),password) != null){
	UserRequestDto userDto = new UserRequestDto();
	
	userDto.setId(user.getId());
	userDto.setPassword(password);
	
	String newPassword = request.getParameter("password-new");
	String email = request.getParameter("email");
	String telecom = request.getParameter("telecom");
	String phone = request.getParameter("phone");

	if(!newPassword.equals("") && !newPassword.equals(password)){
		userDao.updateUserPassword(userDto, newPassword);
	}

	if(user.getEmail() != null && !user.getEmail().equals(email)){
		userDto.setEmail(email);
		userDao.updateUserEmail(userDto);
	}

	if(!user.getTelecom().equals(telecom) || user.getPhone().equals(phone)){
		userDto.setTelecom(telecom);
		userDto.setPhone(phone);
		userDao.updateUserPhone(userDto);
	}
}

session.setAttribute("user",user);
response.sendRedirect("/mypage");

%>
</body>
</html>
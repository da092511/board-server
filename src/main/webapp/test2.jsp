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
String pageData = (String) pageContext.getAttribute("test");  // type : Object
String requestData = (String) request.getAttribute("test");
String sessionData = (String) session.getAttribute("test");
String applicationData = (String) application.getAttribute("test");

out.println(String.format("pagData : <p>%s</p>", pageData));
out.println(String.format("requestData : <p>%s</p>", requestData));
out.println(String.format("sessionData : <p>%s</p>", sessionData));
out.println(String.format("applicationData : <p>%s</p>", applicationData));
%>
</body>
</html>
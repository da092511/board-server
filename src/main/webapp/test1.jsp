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

out.println(String.format("<p>pagData : %s</p>", pageData));
out.println(String.format("<p>requestData : %s</p>", requestData));
out.println(String.format("<p>sessionData : %s</p>", sessionData));
out.println(String.format("<p>applicationData : %s</p>", applicationData));
%>
<!-- JSP EL(Expression Language) Tag -->
<p>${pageScope.test}</p>
<p>${requestScope.test}</p>
<p>${sessionScope.test}</p>
<p>${applicationScope.test}</p> <br>

<!-- Default 참조 영역 확인용 : request > session > application -->
<p>${test}</p>

<button onclick="location.href='test2.jsp'">Test2로 이동</button>

</body>
</html>
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
	String id = (String) session.getAttribute("id");
	String pw = (String) session.getAttribute("pw");
	Integer age = (Integer) session.getAttribute("age");
	String session_id = session.getId();
	int inactive = session.getMaxInactiveInterval() / 60;
%>

	id : <%= id %> <br>
	pw : <%= pw %> <br>
	age : <%= age %> <br>
	session_id : <%= session_id %> <br>
	inactive : <%= inactive %> 분 <br>
	
</body>
</html>
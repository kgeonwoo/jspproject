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
	session.setAttribute("id","pinksung");
	session.setAttribute("pw","1234");
	session.setAttribute("age",20);
%>

	<h2>
		세션 설정
	</h2>
</body>
</html>
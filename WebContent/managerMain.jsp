<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<h3>관리자로 로그인 성공</h3>
	<p>
		<%=URLDecoder.decode(request.getParameter("userName"),"UTF-8") %>
	</p>
	<p>
		<%=request.getParameter("userID") %> 님 환영합니다.
	</p>
</body>
</html>
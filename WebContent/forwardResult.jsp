<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
%>
<body bgcolor=grey>
	<p>
		forward 방식으로 이동된 페이지
	</p>
	<p>
		나이 : <%= age %>
	</p>
	<p>
		이름 : <%= name %>
	</p>
	
</body>
</html>
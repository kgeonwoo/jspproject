<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!
	int a = 20;
	int b = 10;
	public int add(int a,int b){
		return a + b;
	}
%>

<body>
	<%@ include file="header.jsp" %>

	<p>
		<%= a %> + <%= b %> = <%= add(a,b) %>
		<%= a + "+" + b + "=" + add(a,b) %>
	</p>
	<a href="main.jsp">멩이로 이동하기</a>
	
	<%@ include file="footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	text-align:center;
}
</style>
<body>
<script>
	alert("로그인 성공");
</script>
<%
	if(session.getAttribute("username") == null){
		response.sendRedirect("sessionLoginForm.jsp");
	}else{
		%>
		<p>
			<%= session.getAttribute("username") %>님 안녕하세요!		
		</p>
		<p>저희 홈페이지에는 아무것도 없습니다!</p>
		<h1>즐겨보던가</h1>
		<form method="post" action="sessionLogout.jsp">
			<input type="submit" value="꺼지기">
		</form>
		<%
	}
%>
</body>
</html>
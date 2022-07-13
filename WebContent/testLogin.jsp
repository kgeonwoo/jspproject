<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	String id = "pinksung";
	String pw = "1234";
	String name = "성윤정";
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
		response.sendRedirect("main_.jsp?name=" + URLEncoder.encode(name,"UTF-8"));
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>
<body>

</body>
</html>
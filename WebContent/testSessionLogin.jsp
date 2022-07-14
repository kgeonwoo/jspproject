<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = "rlarjsdn75";
	String pw = "1234";
	String name = "김건우";
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))){
		session.setAttribute("username",name);
		response.sendRedirect("home.jsp");
	}else{
		response.sendRedirect("sessionLoginForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>
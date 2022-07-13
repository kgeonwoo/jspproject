<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	String userID = request.getParameter("userID");
	String pw = request.getParameter("pw");
	String loginCheck = request.getParameter("loginCheck");
	
	if(loginCheck.equals("user")){
		%>
		
		<jsp:forward page="userMain.jsp">
			<jsp:param value='<%=URLEncoder.encode("전고객","UTF-8") %>' name="userName"></jsp:param>
		</jsp:forward>
		
		<%
	}else{
		%>
		
		<jsp:forward page="managerMain.jsp">
			<jsp:param value='<%=URLEncoder.encode("성관리","UTF-8") %>' name="userName"></jsp:param>
		</jsp:forward>
		
		<%
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
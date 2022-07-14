<%@ page import="java.util.Enumeration" %>
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
	out.println("<h2>세션 생성<h2>");
	session.setAttribute("s_name1","저는 세션에 저장된 첫번째 정보입니다!");
	session.setAttribute("s_name2","저는 세션에 저장된 두번째 정보입니다!");
	session.setAttribute("s_name3","저는 세션에 저장된 세번째 정보입니다!");
	
	Enumeration names;
	names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value +"<br>");
	}
	
	session.removeAttribute("s_name2");
	//	session.invalidate();
	
	out.println("<hr><h2>세션 일부 삭제<h2>");
	
	names = session.getAttributeNames();
	
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value +"<br>");
	}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String s_num = request.getParameter("num");
	int addNum = 0;
	String s_addNum = "";
	
	for(int i = 1; i <= num; i++){
		if(i == 1){
			s_addNum = Integer.toString(i);
		}else{
			s_addNum = s_addNum  + "+" + Integer.toString(i);
		}
		addNum = addNum + i;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1부터 <%= num %>까지 자연수의 합 구하기</h2>
	<p>
		<%= s_addNum %> = <%= addNum %>	
	</p>
</body>
</html>
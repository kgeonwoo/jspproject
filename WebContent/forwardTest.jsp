<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	if( age <= 19){
		%>
		<script type="text/javascript">
			alert("19세 미만으로 입장 불가");
			history.go(-1);
		</script>
		<%
	}else{
		request.setAttribute("name","성윤정");
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardResult.jsp");
		dispatcher.forward(request, response);
	}
		
%>
<body>

</body>
</html>
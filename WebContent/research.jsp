<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	if(gender.equals("male")){
		gender = "남자";
	}else{
		gender = "여자";
	}
	String[] season = request.getParameterValues("season");
	String season_text = "";
	for(int i = 0; i < season.length; i++){
		if(season[i].equals("1")){
			season[i] = "봄 ";
		}else if(season[i].equals("2")){
			season[i] = "여름 ";
		}else if(season[i].equals("3")){
			season[i] = "가을 ";
		}else{
			season[i] = "겨울 ";
		}
		season_text = season_text + season[i];
	}
%>
<body>
	<h2>설 문 조 사 결 과</h2>
	
	<p>
		이름 : <%= name %>
	</p>
	<p>
		성별 : <%= gender %>
	</p>
	<p>
		좋아하는 계절 : <%= season_text %> 입니다.
	</p>
	<br>
	<b><a href='javascript:history.go(-1)'>다시</a></b>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	double height = Double.parseDouble(request.getParameter("height"));
	double kg = Double.parseDouble(request.getParameter("kg"));
	double bmi = kg/(height/100 * height/100);
	String result = "";
	if(bmi >= 25) {
		result += "과체중";
	} else if(bmi <= 18) {
		result += "저체중";
	} else {
		result += "정상";
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름:<%=name %><br>
	신장:<%=height %><br>
	몸무게:<%=kg %><br>
	BMI:<%=bmi %><br>
	결과:<%=result %>
<%-- 	<%if(bmi >= 25) {%>
		<p>과체중</p>
	<%}else if(bmi <= 18) {%>
		<p>저체중</p>	
	<%} else {%>
		<p>정상</p>
	<%}%> --%>
	

</body>
</html>
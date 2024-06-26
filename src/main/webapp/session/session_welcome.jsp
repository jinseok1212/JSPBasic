<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//이 페이지는 세션이 있는사람(로그인한 사람)만 들어올 수 있는 페이지
	//로그인 안된 사람은 접근하지 못하도록
	if(session.getAttribute("user_id") == null) {
		response.sendRedirect("session_ex01.jsp");
	}
	
	
	
	//세션에 저장된 값을 얻는다.
	String user_id = (String)session.getAttribute("user_id");
	String user_nick = (String)session.getAttribute("user_nick");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=user_id %>(<%=user_nick %>)님 환영합니다.</h3>
	<a href="session_Logout.jsp">로그아웃</a>
	
</body>
</html>
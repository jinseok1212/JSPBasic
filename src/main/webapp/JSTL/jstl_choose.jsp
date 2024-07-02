<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${param.name == '홍길동'}">
			<p>홍길동 입니다</p>
		</c:when>
		<c:when test="${param.name == '이순신' }">
			<p>이순신 입니다</p>
		</c:when>
		<c:otherwise>
			<p>둘다 아닙니다</p>
		</c:otherwise>
	</c:choose>
	
	<!-- 20세 이상이면 성인, 20세 미만이면 미성년자 choose -->
	<c:choose>
		<c:when test="${param.age >= 20 }">
			<p>성인</p>
		</c:when>
		<c:otherwise>
			<p>미성년자</p>
		</c:otherwise>
	</c:choose>
	

</body>
</html>
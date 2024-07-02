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
	<h3>부서 데이터</h3>
	<c:if test="${departmentId == null}">
		<p>조회한 부서는 없는 번호입니다</p>
	</c:if>
	
	
	<p>${departmentId.departmentId}</p>
	<p>${departmentId.departmentName}</p>
	<p>${departmentId.managerId}</p>
	<p>${departmentId.locationId}</p>
	
	
	
	<%-- <a href="quiz01.jsp">다시 조회하기</a>
	<table>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>매니저번호</th>
			<th>부서위치번호</th>
		</tr>
		<tr>
			<td>부서번호: ${departmentId.departmentId}</td>
	        <td>부서명: ${departmentId.departmentName}</td>
	        <td>매니저ID: ${departmentId.managerId}</td>
	        <td>위치ID: ${departmentId.locationId}</td>
		</tr>
	</table> --%>
</body>
</html>
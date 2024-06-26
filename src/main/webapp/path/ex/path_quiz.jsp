<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>경로 공부하기</h3>
	<!-- a태그로 jspTag폴더에 include 페이지로 상대경로, 절대경로 -->
	<a href="../../jspTag/include.jsp">상대경로 include</a>
	<a href="/JSPBasic/jspTag/include.jsp">절대경로 include</a>
	<!-- MyServlet 맵핑경로는 /JSPBasic/apple 입니다. 상대경로 이동-->
	<a href="../../apple">서블릿으로</a>
	<!-- html안에 있는 이미지파일을 img태그 상대경로, 절대경로 참조 -->
	<img alt="상대경로이미지" src="../../html/img/1.jpg"/>상대경로이미지
	<img alt="절대경로이미지" src="/JSPBasic/html/img/1.jpg"/>절대경로이미지
</body>
</html>
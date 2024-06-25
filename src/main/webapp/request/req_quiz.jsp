<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>req_quiz_ok로 post방식으로 데이터를 넘기고, ok페이지에서는 화면에 출력</h3>
	

	<form action="req_quiz_ok.jsp" method="post">
		
		아이디:<input type="text" name="id" placeholder="힌트" size="7"><br>
		비밀번호:<input type="password" name="pw"><br>
		
		<!-- checkbox, radio속성은 반드시 name속성을 사용해서 하나의 그룹으로 묶어주어야 합니다. -->
		관심분야:
		<input type="checkbox" name="inter" value="java">java
		<input type="checkbox" name="inter" value="jsp">jsp
		<input type="checkbox" name="inter" value="database">database
		<input type="checkbox" name="inter" value="python">python
		<br>
		
		전공분야:
		<input type="radio" name="major" value="경영학과">경영학과
		<input type="radio" name="major" value="컴퓨터공학과">컴퓨터공학과
		<input type="radio" name="major" value="철학과">철학과
		<input type="radio" name="major" value="수학과">수학과
		<br>
		
		입사일:
		<input type="date" name="regdate">
		
		<br>
		지역:
		<select name="region">
			<option>서울시</option>
			<option>경기도</option>
			<option>부산시</option>
			<option>인천시</option>
		</select>
		
		<br>
		<textarea rows="5" cols="30" name="introduce"></textarea>
		
		<!-- form안에 데이터를 서버로 전송하는 버튼 -->
		<br>
		<input type="submit" value="확인">
		<input type="reset" value="다시작성하기">
		<!-- 나중에 javascript를 사용해서, 기능을 붙이게 됩니다. -->
		<input type="button" value="그냥버튼">
		
		
	</form>
	
</body>
</html>
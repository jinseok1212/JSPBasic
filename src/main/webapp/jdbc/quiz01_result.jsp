<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="com.model.DepartmentDAO"%>
   <%@page import="com.model.DepartmentDTO"%>
<%
	/*
	사용자가 부서번호에 정보를 보여주는 프로그램 코드
	
	1. 사용자가 입력한 부서번호를 받습니다.
	2. DepartmentDAO에 부서번호에 따라서 부서정보를 조회하는 메서드를 생성해주세요.
		=> 번호로 조회하기 때문에 부서번호는 반드시 1행 입니다.
		
	3. 부서정보를 조회했다면, 조회한 결과를 quiz_ok로 데이터를 넘겨주세요.
	4. quiz_ok에서는 EL, JSTL을 사용해서, 사용자의 부서정보를 출력해주면 됩니다.
	
	*/
	//받을 값은 x
	
		//DAO객체 생성
		int departmentId = Integer.parseInt(request.getParameter("departmentId"));
		DepartmentDAO dao = DepartmentDAO.getInstance(); //싱글톤 객체생성
		DepartmentDTO dto = dao.getList1(departmentId); //부서 조회 메서드 호출
		
		//리스트를 다음 페이지로 전달
		request.setAttribute("departmentId", dto); //request에 저장
		//포워드로 결과화면 이동
		request.getRequestDispatcher("quiz_ok.jsp").forward(request, response);

%>
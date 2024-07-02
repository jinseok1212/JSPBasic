<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_ok으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_no으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	String name = request.getParameter("name");
	String korean = request.getParameter("korean");
	String english = request.getParameter("english");
	String math = request.getParameter("math");
	
	double avg = (Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math)) / 3.0;
	
	//avg를 다음화면에서 사용하려면 setAttribute로 저장
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	
	if(avg >= 60) {
		request.getRequestDispatcher("score_ok.jsp").forward(request, response);

	} else {
		request.getRequestDispatcher("score_no.jsp").forward(request, response);

	}
	
	
	
%>

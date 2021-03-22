<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	// 자바 코드로 작성하는 꺾쇠
	// <%  는 로컬변수
	// <%! 는 멤버변수가 된다.
	// <%= 는 값 출력용(response)

	// 멤버 정의부
	//int comNum = new java.util.Random().nextInt(100) + 1;
	int comNum = (int) Math.floor(Math.random() * 100) + 1;
%>

 
<%
	String numStr = request.getParameter("num");
	int num = new Integer(numStr);
	String msg = "";
	if(num == comNum) {
		msg = "정답입니다";
		comNum = (int) Math.floor(Math.random() * 100) + 1;
	} else if(num < comNum) {
		msg = "높여주세요";
	} else {
		msg = "낮춰주세요";
	}
	out.println(msg);
%>


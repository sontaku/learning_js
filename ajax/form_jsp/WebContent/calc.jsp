<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s1 = request.getParameter("num1");
	String s2 = request.getParameter("num2");
	String opr = request.getParameter("opr");
	int num1 = new Integer(s1);
	int num2 = new Integer(s2);
	if("+".equals(opr)) {
		out.println(num1 + num2); // + 부호는 %2B
	} else if ("-".equals(opr)) {
		out.println(num1 - num2);
	} else if ("*".equals(opr)) {
		out.println(num1 * num2);
	} else if ("/".equals(opr)) {
		out.println(num1*1.0 / num2);
	} else if ("%".equals(opr)) {
		out.println(num1 % num2);
	} else if ("^".equals(opr)) {
		out.println((long)Math.pow(num1, num2));
	}
%>
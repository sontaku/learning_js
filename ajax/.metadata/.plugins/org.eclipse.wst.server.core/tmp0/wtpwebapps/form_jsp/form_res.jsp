<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

JSP TEST <br>
<%-- ${param.파라미터이름} --%>
<%-- 
query = ${param.query }<br>
gender = ${param.gender } ->
<%
	String g = request.getParameter("gender");
	if(g.equals("male"))
		out.print("남성");
	else
		out.print("여성");
%>
 --%>
 mycolor = ${ param.mycolor }<br>
 mydate = ${ param.mydate }<br>
 fav_food = ${ param.fav_food }<br>
 
</body>
</html>
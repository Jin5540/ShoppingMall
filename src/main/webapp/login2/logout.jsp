<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
Cookie[] cookies =request.getCookies();
out.println(cookies.length);
for(int i =0; i<cookies.length; i++)
{
cookies[i].setMaxAge(0);
response.addCookie(cookies[i]);
}
response.sendRedirect("../index.jsp");
%>
</body>
</html>
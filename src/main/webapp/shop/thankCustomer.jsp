<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 완료</title>
</head>
<body>

<% 
Cookie[] cookies = request.getCookies();
out.println(cookies.length+"<br>");

for(int i =0; i<cookies.length; i++)
{
	out.println(cookies[i].getName()+":"+cookies[i].getValue()+"<br>");   
}
out.println("주문이 완료되었습니다"+"<br>");
%>

<% 
session.invalidate();
for(int i =0; i<cookies.length; i++)
{
cookies[i].setMaxAge(0);
response.addCookie(cookies[i]);
}

%>
<a href="./main.jsp">HOME</a>
</body>
</html>
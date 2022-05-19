<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>
</head>
<body>
<% 
Cookie[] cookies = request.getCookies();
out.println(cookies.length+"<br>");

for(int i =0; i<cookies.length; i++)
{
	out.println(cookies[i].getName()+":"+cookies[i].getValue()+"<br>");   
}
%>

주문이 완료되었습니다.

<a href="./thankCustomer.jsp">주문완료</a>
<a href="./cancelCustomer.jsp">주문취소</a>
</body>
</html>
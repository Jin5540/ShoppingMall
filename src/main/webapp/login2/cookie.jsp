<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<%
   Cookie[] cookies2 = request.getCookies();
   System.out.println(cookies.length+"<br>");
   
   for(int i =0; i<cookies.length; i++)
   {
	System.out.println("name : "+cookies[i].getName());  
	System.out.println("value : "+cookies[i].getValue());   
   }

%>
<br>
 로그인 완료<br>
 
<%@ include file="../common/footer.jsp"%>
</body>
</html>
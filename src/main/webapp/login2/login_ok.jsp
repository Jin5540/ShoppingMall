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
//전달된 데이터 확인
String id = request.getParameter("id");
String pw = request.getParameter("pw");

out.println(id);
out.println(pw);

//쿠키변수 만들기

if(id.equals("admin") && pw.equals("123456"))
{
	Cookie cookie1 = new Cookie("id",id);
	response.addCookie(cookie1);
	Cookie cookie2 = new Cookie("pw",pw);
	response.addCookie(cookie2);
	cookie1.setPath("/");
	cookie2.setPath("/");
	cookie1.setMaxAge(60*60);
	cookie2.setMaxAge(60*60);
	response.sendRedirect("login.jsp");
	out.println("쿠키가 정상적으로 만들어졌습니다");
	
}
else{
	response.sendRedirect("error.jsp");
}





%>
</body>
</html>
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
    request.setCharacterEncoding("UTF-8");


    String name = request.getParameter("name");
    String date = request.getParameter("date");
    String contry = request.getParameter("contry");
    String code = request.getParameter("code");
    String address = request.getParameter("address");
   
    
    String cartid = request.getParameter("cartid");
    //Cookie cookie = new Cookie("mdmberId",cartid);
    Cookie cookie1 = new Cookie("name",name);
    Cookie cookie2 = new Cookie("date",date);
    
    cookie1.setMaxAge(60*60*24);
    cookie2.setMaxAge(60*60*24);
    response.addCookie(cookie1);
    response.addCookie(cookie2);
    
    response.sendRedirect("orderConfirm.jsp");
%>
 
이름: <%=name%>
국가: <%=contry%>
우편번호: <%=code%>
주소: <%=address%>
     
<%@ include file="../common/footer.jsp" %>
</body>
</html>

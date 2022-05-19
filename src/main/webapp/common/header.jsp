<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M12메뉴</title>
</head>
<body>

<%
//Cookie[] cookies = request.getCookies();
//if(cookies.length<6){
if(session.getAttribute("id")==null){%>
<table class="type04" width=98%>
<tr>
<td>
<a href="/M12/index.jsp">HOME</a>
</td>
<td>
<a href="/M12/shop/main.jsp">쇼핑몰</a>
</td>
<td>
<a href="/M12/shop/write.jsp"><font>상품등록</font></a>
</td>
<td>
<a href="/M12/login/login.jsp">로그인</a>
</td>
</tr>
</table>
<%}else{ %>

<table class="type04" width=98%>
<tr>
<td>
<a href="/M12/index.jsp">HOME</a>
</td>
<td>
<a href="/M12/shop/main.jsp">쇼핑몰</a>
</td>
<td>
<a href="/M12/board/list.jsp">게시판</a>
</td>
<td>
<a href="/M12/login/logout.jsp">로그아웃</a>
</td>
</tr>
</table>
<%} %>
</body>
</html>
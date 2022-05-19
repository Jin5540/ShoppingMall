<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="/M12/css/type2.css">
<style>
body {
    text-align: center;
    color: white;
    background-image: url(/M12/img/2.jpg);
    background-repeat: no-repeat;
    background-attachment: scroll;
    
    background-size: cover;
    width: 100%; 
    height: 100%;
}

font{
size:3em;
color:white;}

</style>
</head>
<body>
<%if(session.getAttribute("id")==null){%>
<table class="type04" width=98%>
<tr>
<td>
<a href="/M12/index.jsp"><font>HOME</font></a>
</td>
<td>
<a href="/M12/shop/main.jsp"><font>쇼핑몰</font></a>
</td>
<td>
<a href="/M12/shop/write.jsp"><font>상품등록</font></a>
</td>
<td>
<a href="/M12/login/login.jsp"><font>로그인</font></a>
</td>
</tr>
</table>
<%}else{%>
<table class="type04" width=98%>
<tr>
<td>
<a href="/M12/index.jsp"><font>HOME</font></a>
</td>
<td>
<a href="/M12/shop/main.jsp"><font>쇼핑몰</font></a>
</td>
<td>
<a href="/M12/shop/write.jsp"><font>상품등록</font></a>
</td>
<td>
<a href="/M12/login/logout.jsp"><font>로그아웃</font></a>
</td>
</tr>
</table>
<%} %>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="footer small text-center"><div class="container px-4 px-lg-5">Copyright &copy; 2021 Jin</div></footer>
</body>
</html>
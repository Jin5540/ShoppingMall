<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/M12/css/type2.css">
</head>
<body>

<%@ include file="../common/header.jsp"%>
<form method="post" action="login_ok.jsp" name="myform">
<table width=50%>
<tr>
<td>
아이디
</td>
<td>
<input type="text" id="id" name="id">
</td>
</tr>
<tr>
<td>
비밀번호
</td>
<td>
<input type="password" id="pw" name="pw">
</td>
</tr>
<tr>
<td>
<input type="submit" value="등록">
</td>
</tr>
</table>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
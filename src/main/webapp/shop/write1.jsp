<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
상품등록<br>
<form method="post" action="write1_ok.jsp" name="myform" enctype="multipart/form-data">
<table width=100% border=1>
<tr><td>상품코드</td><td><input type="text" name="productId"></td></tr>
<tr><td>상품명</td><td><input type="text" name="productId"></td></tr>
<tr><td>가격</td><td><input type="text" name="productId"></td></tr>
<tr><td>상세정보</td><td><input type="text" name="productId"></td></tr>
<tr><td>제조사</td><td><input type="text" name="productId"></td></tr>
<tr><td>분류</td><td><input type="text" name="productId"></td></tr>
<tr><td>재고수</td><td><input type="text" name="productId"></td></tr>
<tr><td>상태</td><td><input type="text" name="productId"></td></tr>
<tr><td>파일</td><td><input type="file" name="filename"></td></tr>
<tr><td>등록</td><td><input type="submit" value="등록"></td></tr>
</table>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
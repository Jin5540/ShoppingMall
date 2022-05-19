<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/M12/css/type2.css">
<meta charset="UTF-8">
<title>JSL인재개발원 쇼핑몰</title>
<script type="text/javascript" src="../js/validation.js"></script>
</head>
<body>
<%@ include file="../common/header.jsp"%>

<form method="post" action="write_ok.jsp" name="myform" enctype="multipart/form-data">

<table table class="type02" width=100% ">
<tr><th scope="row">상품코드</th><td><input type="text" id="productId" name="productId"></td></tr>
<tr><th scope="row">상품명</th><td><input type="text" id="name" name="name"></td></tr>
<tr><th scope="row">가격</th><td><input type="text" id="unitPrice" name="unitPrice"></td></tr>
<tr><th scope="row">상세정보</th><td><input type="text" name=""></td></tr>
<tr><th scope="row">제조사</th><td><input type="text" name=""></td></tr>
<tr><th scope="row">분류</th><td><input type="text" name=""></td></tr>
<tr><th scope="row">재고수</th><td><input type="text" id="unitsInStock" name="unitsInStock"></td></tr>
<tr><th scope="row">상태</th><td><input type="text" name=""></td></tr>
<tr><th scope="row">파일</th><td><input type="file" name="filename" required></td></tr>
<tr><th scope="row">등록</th><td><input type="button" value="등록" onclick="CheckAddProduct()"></td></tr>
</table>
</form>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
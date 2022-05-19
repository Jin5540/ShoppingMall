<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<title>쇼핑몰</title>
<script type="text/javascript" src="../js/order.js"></script>
<% 

   int sum=0;
   ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
   
   if(cartList == null)
   {
      cartList = new ArrayList<Product>();
      
   }
   Product p = new Product();
   for(int i=0;i<cartList.size();i++)  {
      p = cartList.get(i);
      int total =p.getUnitPrice()*p.getQuantity();
      sum = sum+total;}
%>


<link rel="stylesheet" href="/M12/css/type2.css">
</head>
<body>

<%@ include file="../common/header.jsp"%>
주문하기<br>
<%
//String cartId = request.getParameter("cartid");
//out.print(cartId);
%>
<form method="post" action="processOrder.jsp" name="myform">

<table class="type02" width=50%>

<input type="hidden" name="cartid" value="1">
<tr><td>제품</td><td><%=p.getProductId() %> | <%=p.getPname() %></td></tr>
<tr><td>개수</td><td><%=p.getQuantity() %></td></tr>
<tr><td>총액</td><td><%=p.getUnitPrice()*p.getQuantity()%></td></tr>
<tr><td>성명</td><td><input type="text" id="name" name="name" required></td></tr>
<tr><td>배송일</td><td><input type="text" id="date" name="date" required></td></tr>
<tr><td>국가</td><td><input type="text" id="contry" name="contry" required></td></tr>
<tr><td>우편번호</td><td><input type="text" id="code" name="code" required></td></tr>
<tr><td>배송지</td><td><input type="text" id="address" name="address" required></td></tr>
<tr><td>등록</td><td><input type="button" value="주문하기" onclick="orderCheck()"></td></tr>
<tr><td>취소</td><td><input type="button" value="취소하기" onclick="cancel()"></td></tr>
</table>

</form>

<%@include file="../common/footer.jsp" %>
</body>
</html>
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
<script type="text/javascript" src="../js/validation.js"></script>
<link rel="stylesheet" href="/M12/css/type2.css">
</head>
<body>
<%@ include file="../common/header.jsp"%>
장바구니 <br>
<hr>
<table class="type02" width=60%>
<tr>
<th scope="row">상품</th>
<th scope="row">가격</th>
<th scope="row">수량</th>
<th scope="row">소계</th>
<th scope="row">비고</th>
</tr>
<% 
	String cartId = session.getId();
	out.println("카트 ID : "+cartId);
	int sum=0;
	ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
	
	if(cartList == null)
	{
		cartList = new ArrayList<Product>();
		
	}
	

	for(int i=0;i<cartList.size();i++)  {
		Product p = cartList.get(i);
		int total =p.getUnitPrice()*p.getQuantity();
		sum = sum+total;
%>
<tr>
<td><%=i%> | <%=p.getProductId() %> | <%=p.getPname() %></td>
<td><%=p.getUnitPrice() %></td>
<td><%=p.getQuantity() %></td>
<td><%=total%></td>
<td><a href="./removeCart.jsp?id=<%=p.getProductId() %>">삭제</a></td>
</tr>
<% } %>
<tr>
<td></td>
<td></td>
<td>총액</td>
<td><%=sum%></td>
<td></td>
</tr>
<tr>
<td colspan=5>
<a href="./main.jsp">쇼핑계속하기</a> | <a href="order.jsp?cartId=<%=cartId%>">주문하기</a> | <a href="deleteCart.jsp?cartId=<%=cartId%>">장바구니 비우기</a> 
</td>
</tr>

</table>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
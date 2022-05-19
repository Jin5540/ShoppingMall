<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<%@ page import = "java.util.Enumeration" %>

<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSL인재개발원 쇼핑몰</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<% 
String productId = request.getParameter("id"); //P0001


Product p = new Product();
ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");

for(int i=0;i<cartList.size();i++)
{
	p = cartList.get(i);
	if(p.getProductId().equals(productId))
	{		
		cartList.remove(p);
		
	}	
}

response.sendRedirect("cart.jsp");
%>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
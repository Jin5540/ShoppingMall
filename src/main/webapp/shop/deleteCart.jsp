<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />

<% 
	String cartId = request.getParameter("cartId");
	//BC9EFC920BB2E968B49F58F9D50FCA52
	if(cartId == null || cartId.trim().equals(""))
	{
		response.sendRedirect("cart.jsp");	
		return;
		
	} else {
		session.invalidate();
		response.sendRedirect("cart.jsp");			
	}
%>
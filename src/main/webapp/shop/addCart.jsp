<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSL인재개발원 쇼핑몰</title>
<script type="text/javascript" src="../js/addToCart.js"></script>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<%

String productId = request.getParameter("productId");
out.println("상품코드:" +productId);

if(productId == null || productId.trim().equals(""))
{
	response.sendRedirect("detail.jsp");
	return;
}

//상품코드가 실제로 ArrayList 또는 파일 또는 데이터베이스에 (데이터)있는지 확인

//해당 상품이 있니?
//Product product = productDAO.getProductById(productId);
//if( product == null)
//{
	//out.println("해당 상품은 존재하지 않습니다.<br>");
	//response.sendRedirect("errorNoProductId.jsp");	
//}

//상품검색
ArrayList<Product> goodslist = productDAO.getAllProducts();
Product goods = new Product();



for(int i=0;i<goodslist.size();i++)
{
	goods = goodslist.get(i);
	if(goods.getProductId().equals(productId))
	{
		out.println("상품 존재<br>");
		break;
	}
}

//장바구니에 추가(세션처리 : 처음에는 무조건 만든다.!)
//session.
ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
if(list == null)
{
	list = new ArrayList<Product>();
	session.setAttribute("cartlist", list);
	
}


int cnt=0;
Product goodsQnt = new Product();
for(int i=0; i<list.size();i++)
{
	
	out.println(">>:"+list.get(i));
	goodsQnt = list.get(i);
	if(goodsQnt.getProductId().equals(productId))
	{
		out.println("동일한 상품 존재함");
		cnt++;
		int orderQuantity = goodsQnt.getQuantity()+1;
		goodsQnt.setQuantity(orderQuantity );
	} else {
		out.println("동일한 상품 없음");	
	}
}

//로그인은 id라는 세션변수에 admin이라는 값.
//session.setAttribute("id", "admin");
  

//cartlist에 상품추가(*)
//
if(cnt == 0)
{
	goods.setQuantity(1);
	list.add(goods);
}

//
//out.println(productDAO.getQuantity());

response.sendRedirect("cart.jsp");

%>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
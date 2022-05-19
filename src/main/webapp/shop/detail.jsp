<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<%@ page import = "com.jslhrd.dao.ProductRepository" %>    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<script type="text/javascript">
	function addCartBtn(){
		if (confirm("쇼핑카트에 담으시겠습니까?")){ //확인
			//javascript form submit
			document.getElementById("addCartForm").submit();
			//command:addcart가 전송되어 AddCartController가 실행됨
		} else { //취소
			return;
		}
	}
</script>
</head>
<body>

<% 
String id = request.getParameter("id");
String productId = request.getParameter("productId");
String filename = request.getParameter("filename");
Product pi = new Product();
//out.println( "id "+ id);
//response.sendRedirect("detai.jsp");
ProductRepository a =new ProductRepository();
ArrayList<Product> listOfProducts = a.getAllProducts();
//out.println("총 등록된 제품 수 : " + listOfProducts.size());


//out.println("추출" +a.getProductById(productId));}catch(Exception e){out.print(e);}


for(int i=0;i<listOfProducts.size();i++) 
{
	Product p = listOfProducts.get(i);
}%>
<%=
productId
%>
<%=
filename
%>


<%@ include file="../common/header.jsp"%>
<td>
<img src="../img/<%=filename%>" width="500" height="450"></img><br>

<a href="addCart.jsp?productId=<%=productId%>" onclick="addCartBtn()">장바구니 담기</a> 
<a href="cart.jsp">장바구니</a> 
<a href="write.jsp">상품등록<a> 
<a href="main.jsp">상품목록</a>
</form>
</td>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
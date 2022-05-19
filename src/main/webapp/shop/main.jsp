<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintStream"%>    
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="com.jslhrd.dto.Product"%>
<%@ page import ="java.sql.Connection"%>

<%@ page import ="java.sql.DriverManager"%>
<%@ page import ="java.sql.PreparedStatement"%>
<%@ page import ="java.sql.ResultSet"%>
<%@ page import ="java.sql.SQLException"%>
<%@ page import ="java.sql.Statement"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.Date"%>
<%@ page import ="java.util.List"%>
<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
<% 
ArrayList<Product> cartlist = (ArrayList<Product> )session.getAttribute("cartlist");
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>

<link rel="stylesheet" href="/M12/css/type2.css">

</head>
<body>
<%@ include file="../common/header.jsp"%>
<% 
if(cartlist==null)
{}else{out.print("a cart");}
%>
<table class="type08" width=95%>
<thead>
<tr>
<th scope="cols">
번호
</th>

<th scope="cols">
상품코드
</th>


<th scope="cols">
사진
</th>



<th scope="cols">
제품명
</th>

<th scope="cols">
가격
</th>

<th scope="cols">
상세보기
</th>
</tr>
 </thead>

<%
Product pi = new Product();
List<Product> list = new ArrayList<Product>();
%>

<% 
int rec=0;
String url="jdbc:mysql://localhost:3306/phoenixking";
String id="phoenixking";
String pw="123456";
Connection con = null;
try{   
 Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection(url,id,pw);

 
}catch(ClassNotFoundException e1) {

}catch(SQLException e2){

}

ResultSet rs =null;
ResultSet rs1 =null;

//PreparedStatement ptsm=null;
Statement stmt =null; 
//BoardController  bc = new  BoardController ();
String Sql1="SELECT count(*) from p";

String Sql= "SELECT * FROM p";
try {
	stmt = con.createStatement();
rs1= stmt.executeQuery(Sql1);
while(rs1.next()){
rec=rs1.getInt(1);}

if(rec!=0)
{
rs= stmt.executeQuery(Sql);
while(rs.next()) {
//View v = new View();
    pi.setNum(rs.getInt("num"));
	pi.setProductId(rs.getString("ProductId"));
	pi.setFileName(rs.getString("FileName"));
	pi.setPname(rs.getString("getPname"));
	pi.setQuantity(rs.getInt("Quantity"));
	pi.setUnitPrice(rs.getInt("UnitPrice"));

	list.add(pi);

	
	int j=0;
	%>
  
	<tr>
	<td>

	<%=pi.getNum()%>
	</td>
	<td>
	<%=pi.getProductId()%>
	</td>
	<td align= center>
	<img src="../img/<%=pi.getFileName()%>" width="300" height="250"></img><br>
	<%=pi.getFileName()%>
	</td>

	<td>
	<%=pi.getPname()%>
	</td>
	<td>
	<%=pi.getUnitPrice()%>
	</td>
	<td>
	<%-- <a href="./detail.jsp">상세보기(전달값이 없는 경우)</a> |-->
	<a href="./detail.jsp?id=<%=i+1%>">상세보기(전달값이 있는 경우)</a>--%>
	<a href="./detail.jsp?productId=<%=pi.getProductId()%>&filename=<%=pi.getFileName()%>">상세보기</a>
	</td>
	</tr>
<%
}
rs.close();
stmt.close();
con.close();
}


}catch(Exception e) {e.printStackTrace();}
//rs1.close();
stmt.close();
con.close();
//


%>





</table>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
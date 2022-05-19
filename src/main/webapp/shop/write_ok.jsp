<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="com.oreilly.servlet.*"%> 
<%@ page import ="com.oreilly.servlet.multipart.*"%>  
  
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.util.*"%>
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
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSL인재개발원 쇼핑몰</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>

<%
	//p529(5)
	Product p = new Product();
List<Product> list = new ArrayList<Product>();
	try{
		
	//String realPath = "C:\\Users\\당근\\eclipse-workspace\\M12\\src\\main\\webapp\\img";
	String realPath = "/home/phoenixking/M12/img";
	MultipartRequest multi = new MultipartRequest(request,realPath,5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	String test = multi.getParameter("filename");
	
	Enumeration files = multi.getFileNames();
	String name = (String) files.nextElement();
	
	String filename = multi.getFilesystemName(name);
	String original = multi.getOriginalFileName(name);
	String original1= original.trim();
	//out.println("실제 파일 이름 " + original+"<br>");
	//out.println("저장 파일 이름 " + filename+"<br>");	
	String productId = multi.getParameter("productId");
	String name2 = multi.getParameter("name");
	String unitPrice=multi.getParameter("unitPrice");
	String unitsInStock = multi.getParameter("unitsInStock");
	
	int unitPrice2= Integer.parseInt(unitPrice);
    int Quantity2 = Integer.parseInt(unitsInStock);
	
	
	
	
	p.setProductId(productId);
	p.setFileName(original1);
	p.setPname(name2);
	p.setQuantity(Quantity2);
	p.setUnitPrice(unitPrice2);
	list.add(p);
	
	//out.println(test);
	//out.println(productId);
	//out.println(productId2);	
	out.println("담은 내용 : "+p.getProductId()+","+p.getFileName()+","+p.getPname()+","+p.getQuantity()+","+p.getUnitPrice());
	
	productDAO.addProduct(p);
	//response.sendRedirect("main.jsp");
	 }
	 catch(Exception e)
{
	   out.print(e.getMessage());
}

Connection con = null;
ResultSet rs =null;
//PreparedStatement ptsm=null;
//SimpleDateFormat timedate = new SimpleDateFormat("yyyyMMddHHmmss");
//Date time = new Date();
//View v = new View();

Statement stmt =null; 

String url="jdbc:mysql://localhost:3306/phoenixking";
String id="phoenixking";
String pw="123456";

try{   
 Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection(url,id,pw);
 //System.out.println("연결성공");
}catch(ClassNotFoundException e1) {

}catch(SQLException e2){
//System.out.println(e2.getMessage());
}


//System.out.println(list.size());

try {
stmt = con.createStatement();
	
    for(Product vw : list) {
	String Sql= "insert into p (ProductId,FileName,getPname,Quantity,UnitPrice) values";
	Sql+="('" +p.getProductId()+"','"+p.getFileName()+"','"+p.getPname()+"','"+p.getQuantity()+"','"+p.getUnitPrice()+"')";
    
	//out.println(Sql);
    int i = stmt.executeUpdate(Sql);
   // System.out.print(i);
    if(i == 1)
    {
     //  System.out.println(Sql);
    }
    }
	
    //System.out.println(list.get(5).getPictureNum());

}catch(Exception e) {e.printStackTrace();}
	
//rs.close();
stmt.close();
con.close();

response.sendRedirect("main.jsp");

%>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
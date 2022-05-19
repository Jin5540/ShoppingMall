package com.jslhrd.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;

import com.jslhrd.dto.*;

public class ProductRepository {
	//ArrayList<Product> listOfProducts = new ArrayList<Product>();
	Product pi = new Product();
	List<Product> list = new ArrayList<Product>(); 
	
	public ProductRepository()
	{
		/*System.out.println("�긽�뭹�뱾");
		//占쎌젫占쎈�뱄옙踰묉에占�
		Product iphone = new Product("P0001","해외여행",100,"1.jpg");
		Product notebook = new Product("P0002","별장숙박권",100, "2.jpg");
		Product tablet = new Product("P0003","패러글라이딩",100,"3.PNG");	
		Product tv = new Product("P0004","스카이다이빙",100,"4.jpg");	
		Product car = new Product("P0005","순금45KG",100,"5.jfif");			
	    
		listOfProducts.add(iphone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);	
		listOfProducts.add(tv);	
		listOfProducts.add(car);
        */
		
	
		
		
		
		int rec=0;
		String url="jdbc:mysql://localhost:3306/yesjin";
		String id="yesjin";
		String pw="123456";
		Connection con = null;
		try{   
		 Class.forName("com.mysql.cj.jdbc.Driver");
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		 con = DriverManager.getConnection(url,id,pw);

		 
		}catch(ClassNotFoundException e1) {

		}catch(SQLException e2){
		System.out.println(e2.getMessage());
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
		System.out.println("나온 값 "+rec);
		if(rec!=0)
		{
		rs= stmt.executeQuery(Sql);
		while(rs.next()) {
		//View v = new View();

			pi.setProductId(rs.getString("ProductId"));
			pi.setFileName(rs.getString("FileName"));
			pi.setPname(rs.getString("getPname"));
			pi.setQuantity(rs.getInt("Quantity"));
			pi.setUnitPrice(rs.getInt("UnitPrice"));
			System.out.println(rs.getString("FileName"));
			System.out.println("product : "+pi.getFileName());
			list.add(pi);
			//System.out.println(list.get(j).getFileName());
		
		}	
		
	
		
		
		
		
	}
	
	}catch(Exception e){System.out.println(e);}
	}
	

	public ArrayList<Product> getAllProducts()
	{
		
		return (ArrayList<com.jslhrd.dto.Product>) list;
		
	}
	

	public String getProductById (String productId)
	{
		
		String a="";
		for(int i=0;i<list.size();i++) 
		{
			Product aa = list.get(i);
			
			if(productId.equals(aa.getProductId())) {
				System.out.println(aa.getFileName());
				
				a=aa.getFileName();
			}
			
			
			
			
		}

		System.out.println(a);
		
		return a;
	}
	    
		
	
		
	public String getQuanity() {
		String msg = "또로롱";
		return msg;
	}
	
	private Product Product() {
		// TODO Auto-generated method stub
		return null;
	}

	public void addProduct(Product product)
	{
		list.add(product);
		
	}

}

package com.jslhrd.dto;

public class Product {
	private int num;
	private String productId;
	private String pname;
	private Integer unitPrice;	
	private String fileName;
	private int quantity;
	
	


	public Product() {
		
	}
	
	public Product(int num,String productId, String pname, Integer unitPrice, String filename) {
		super();
		this.num=num;
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
		this.fileName=filename;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}

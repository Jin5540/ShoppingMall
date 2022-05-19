<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="com.oreilly.servlet.*"%> 
<%@ page import ="com.oreilly.servlet.multipart.*"%>  
  
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.util.*"%>
<%@ page import ="com.jslhrd.dto.Product"%>

<jsp:useBean id="productDAO" class="com.jslhrd.dao.ProductRepository" scope="session" />    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<% try{
	MultipartRequest multi = new MultipartRequest(request,"C:\\uploade",5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	String test = multi.getParameter("filename");
	
	Enumeration files = multi.getFileNames();
	String name = (String) files.nextElement();
	
	String filename = multi.getFilesystemName(name);
	String original = multi.getOriginalFileName(name);
	out.println("실제 파일 이름 " + original+"<br>");
	out.println("저장 파일 이름 " + filename+"<br>");	}

   catch(Exception e)
{
	   out.print(e.getMessage());
}
%>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
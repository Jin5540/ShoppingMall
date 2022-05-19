<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name=(String)request.getSession().getAttribute("name2");
    String value=(String)request.getSession().getAttribute("phone");
 
%>
 
이름:<%=name%>
         
</body>
</html>

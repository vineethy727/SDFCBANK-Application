<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.*" %>

 
      <%
         //Date dNow = new Date( );
      java.util.Date dNow = new java.util.Date();
         SimpleDateFormat time = new SimpleDateFormat (" hh:mm:ss a ");
         SimpleDateFormat date = new SimpleDateFormat ("dd.MM.yyyy");
     	
         out.print(date.format(dNow)+"<br>");
         out.print(time.format(dNow)+"<br>");
      %>
</body>
</html>
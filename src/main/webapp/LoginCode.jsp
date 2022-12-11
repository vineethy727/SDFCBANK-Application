<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logined homepage</title>
<style>
            body
            {
               background-color: gray;
                
            }
            div
            {
                background-color: white;
                font-size: x-large;
                width: 500px;
                margin: auto;
                box-shadow: 30px 30px 30px;
                border-radius: 35px;
                
            }
            h2
            {
                color: red;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
        </style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
	String name=request.getParameter("name");
	String password=request.getParameter("pswd");

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	PreparedStatement ps=con.prepareStatement("select * from sdfcbank where name=? and password=?");
	ps.setString(1, name);
	ps.setString(2,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("LoginedHome.jsp");
	}
	else
	{
		
%>
		<div><br>
            <table align="center" cellpadding="15px">
                <tr><td align="center"><h2><%out.print("PLease enter valid details");%></h2></td></tr>
            </table><br>
        </div>

<%	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>
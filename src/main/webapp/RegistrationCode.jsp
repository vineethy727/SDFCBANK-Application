<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistrationCode</title>
<style>
  h2
            {
                color: red;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
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
            h3
            {
            	color: rgb(10, 198, 25);
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
	String confirmpassword=request.getParameter("cpswd");
	long Accountnumber=Long.parseLong(request.getParameter("accno"));
	double amount=Double.parseDouble(request.getParameter("amt"));
	long mobilenumber=Long.parseLong(request.getParameter("mobno"));
	String email=request.getParameter("mail");
	String gender= request.getParameter("gender");
	String address=request.getParameter("addr");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	PreparedStatement ps=con.prepareStatement("insert into sdfcbank values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,password);
	ps.setString(3,confirmpassword);
	ps.setLong(4,Accountnumber);
	ps.setDouble(5,amount);
	ps.setLong(6,mobilenumber);
	ps.setString(7,email);
	ps.setString(8,gender);
	ps.setString(9,address);
	ps.setString(10,city);
	ps.setString(11,state);
	int i=ps.executeUpdate();
	if(i==1){
%>
	
	<div><br>
            <table align="center" cellpadding="15px">
                <tr><td align="center"><h3><%out.print("Registration successfully");%></h3></td></tr>
            </table><br>
        </div>
<% }
	else
	{
	%>
	<div><br>
            <table align="center" cellpadding="15px">
                <tr><td align="center"><h2><%out.print("Registration Failed");%></h2></td></tr>
                <tr><td align="center"><h2><%out.print("Please enter Valid Details");%></h2></td></tr>
            </table><br>
        </div>
	
<%	
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}

%>
</body>
</html>
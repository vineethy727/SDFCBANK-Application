<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account delete confirmation</title>
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
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
	long Accountnumber=Long.parseLong(request.getParameter("accno"));
	String name=request.getParameter("name");
	String password=request.getParameter("pswd");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	PreparedStatement ps=con.prepareStatement("delete from sdfcbank where (Accountnumber=? or name=?) and password=?");
	ps.setLong(1, Accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	int i=ps.executeUpdate();
	if(i==1){
%>
	<div><br>
            <table align="center" cellpadding="15px">
                <tr><td colspan="2" align="center"><h2><%out.print("Account deleted sucessfully");%></h2></td></tr>
            </table><br>
        </div>

<% }
	else
	{ %>
		<div><br>
            <table align="center" cellpadding="15px">
                <tr><td colspan="2" align="center"><h2><%out.print("Please enter Valid Details");%></h2></td></tr>
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
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit amount</title>
 <style>
            body
            {
                background-color: gray;
            }
            div
            {
                background-color: white;
                width: 500px;
                margin: auto;
                box-shadow: 30px 30px 30px;
                border-radius: 35px;
                
                
            }
            h2
            {
                color: red;
            }
            h3
            {
                color: rgb(10, 198, 25);
            }
           
        </style>
</head>
<body>
<%@ page import="java.sql.*" %>

<%@ page import = "java.util.*" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.text.*" %>
<%
try
{	
	/* Date dNow = new Date();*/
	 java.util.Date dNow = new java.util.Date();
     SimpleDateFormat time = new SimpleDateFormat (" hh:mm:ss a ");
     SimpleDateFormat date = new SimpleDateFormat ("dd.MM.yyyy");
	
	long Accountnumber=Long.parseLong(request.getParameter("accno"));
	String name=request.getParameter("name");
	String password=request.getParameter("pswd");
	double amount=Double.parseDouble(request.getParameter("amt"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	PreparedStatement ps=con.prepareStatement("select * from sdfcbank where Accountnumber=? and name=? and password=?");
	ps.setLong(1, Accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
	%>
	
	 <div><br>
            <table align="center" cellpadding="5px">
                <tr><td colspan="2" align="center"><h1>Transaction Successfull</h1></td></tr>
                <tr><td colspan="2" align="center"> Amount Deposited Successfull</td></tr>
                <tr><td colspan="2" align="center">      Transaction Details</td></tr>
                
                <tr><td>Transaction Date</td><td><%out.print(date.format(dNow));%></td></tr>
                <tr><td>Transaction Time</td><td><%out.print(time.format(dNow));%></td></tr>
                
                <tr><td>Previous Amount</td><td><% out.print(rs.getDouble(5));%></td></tr>
                <tr><td>Deposited Amount</td><td><% out.print(amount);%></td></tr>
                <tr><td>Current Balance</td><td>
								<%	amount=amount+rs.getDouble(5);
									PreparedStatement ps1=con.prepareStatement("Update sdfcbank set amount=? where Accountnumber=?");
									ps1.setDouble(1,amount);
									ps1.setLong(2,Accountnumber);
									int i=ps1.executeUpdate();
									out.print(amount);%></td></tr>
                					<tr><td colspan="2" align="center"> Thank you</td></tr>
            </table><br>
        </div>
	<%
	}
	else 
	{
		%>
		
		 <div><br>
            <table align="center" cellpadding="15px">
                
                <tr><td colspan="2" align="center"><h2><%out.print("Transaction Failed"); %></h2></td></tr>
                <tr><td colspan="2" align="center"><h2><%out.print("Please enter Valid Details"); %></h2></td></tr>
    
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfer Amount </title>
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
	 java.util.Date dNow = new java.util.Date();
     SimpleDateFormat time = new SimpleDateFormat (" hh:mm:ss a ");
     SimpleDateFormat date = new SimpleDateFormat ("dd.MM.yyyy");
     
	long Accountnumber=Long.parseLong(request.getParameter("accno"));
	String name=request.getParameter("name");
	String password=request.getParameter("pswd");
	long TAccountnumber=Long.parseLong(request.getParameter("tacc"));
	double amount=Double.parseDouble(request.getParameter("amt"));
	double tamount=0;
	double ttamount=0;
		
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	
	PreparedStatement ps=con.prepareStatement("select * from sdfcbank where Accountnumber=? and name=? and password=?");
	ps.setLong(1, Accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	
	PreparedStatement ps1=con.prepareStatement("select * from sdfcbank where Accountnumber=? ");
	ps1.setLong(1,TAccountnumber);
	ResultSet rs1=ps1.executeQuery();
	
	if(rs.next() && rs1.next())
	{
		if(amount<rs.getDouble(5))
		{
			tamount=rs.getDouble(5)-amount;
			PreparedStatement ps2=con.prepareStatement("update sdfcbank set amount=? where Accountnumber=? ");
			ps2.setDouble(1,tamount);
			ps2.setLong(2,Accountnumber);
			int i=ps2.executeUpdate();
			
			ttamount=rs1.getDouble(5)+amount;
			PreparedStatement ps3=con.prepareStatement("update sdfcbank set amount=? where Accountnumber=?");
			ps3.setDouble(1,ttamount);
			ps3.setLong(2,TAccountnumber);
			int j=ps3.executeUpdate();
		%>
			<div><br>
                <table align="center" cellpadding="5px">
                    <tr ><td colspan="2" align="center"><h1>Transaction Successfull</h1></td></tr>
                    <tr><td colspan="2" align="center">      Amount Transfered successfully</td></tr>
                    <tr><td colspan="2" align="center">      Transaction Details</td></tr>
                    
                    <tr><td>Transaction Date</td><td><%out.print(date.format(dNow));%></td></tr>
                    <tr><td>Transaction Time</td><td><%out.print(time.format(dNow));%></td></tr>
                    
                    <tr><td>Previous  Balance</td><td>   <%out.print(rs.getDouble(5));%>   </td></tr>
                    <tr><td>Amount Transfered</td><td>       <%out.print(amount);%>          </td></tr>
                    <tr><td>Current Balance</td><td><%out.print(tamount);%></td></tr>
                    <tr><td colspan="2" align="center"> Thank You</td></tr>
                </table><br>
            </div>
			
			
	<%	}
		else{
			%>
			<div><br>
            <table align="center" cellpadding="10px">
            	<tr><td align="center"><h2><%out.print("Transaction Failed");%></h2></td></tr>
                <tr><td align="center"><h2><%out.print("Insufficient amount in the account");%></h2></td></tr>
            </table><br>
        </div>
			
	<%	}
	}
	else 
	{
		%>
		<div><br>
            <table align="center" cellpadding="10px">
            <tr><td align="center"><h2><%out.print("Transaction Failed");%></h2></td></tr>
                <tr><td align="center"><h2><%out.print("Invalid User Name and password");%></h2></td></tr>
            </table><br>
        </div>
		
	<%}
	con.close();				
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>
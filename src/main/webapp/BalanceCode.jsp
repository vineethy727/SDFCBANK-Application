<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Balance</title>
<style>
            body
            {
               background-color: gray;
            }
            div
            {
                background-color: white;
                font-size: x-large;
                text-align: center;
                width: 400px;
              background-color: white;
              margin: auto;
              border-radius: 25px;
                
            }
            h3
            {
            	color: rgb(10, 198, 25);
            }
             h2
            {
                color: red;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
            }
           
        </style>
</head>
<body>
<%@ page import="java.sql.*"  %>
<%
try
{
	long Accountnumber=Long.parseLong(request.getParameter("accno"));
	String name=request.getParameter("name");
	String password=request.getParameter("pswd");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
	PreparedStatement ps=con.prepareStatement("select * from sdfcbank where (Accountnumber=? or name=?) and password=?");
	ps.setLong(1, Accountnumber);
	ps.setString(2,name);
	ps.setString(3,password);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
	%>	
		<div><br>
            <table align="center" cellpadding="15px">
                
                <tr><td colspan="2" align="center"><h3>Account Balance</h3></td></tr>
                <tr><td colspan="2" align="center"><% out.print(rs.getDouble(5));%></td></tr>
    
            </table><br>
        </div>
		
<%	}
	else
	{
		%>
		
		 <div><br>
            <table align="center" cellpadding="15px">
                <tr><td colspan="2" align="center"><h2><%out.print("PLease enter Valid details"); %></h2></td></tr>
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
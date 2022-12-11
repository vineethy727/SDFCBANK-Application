<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw Amount</title>
<style>
            div
            {
                margin: auto;
                width: 400px;
                background-color: white;
               box-shadow: 30px 30px 30px;
                border-radius: 25px;
            }
           
            input{
                border-radius: 20px;
                padding: 5px;
            }
            h3
            {
                font-size: 30px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                text-align: center;
                
            }
            body{
               background-color: gray;
            }
        </style>
</head>
<body>
	<div><br>
            <h3>Wtihdraw Amount</h3>
            <form action="WithdrawCode.jsp" method="post">
            <table align="center" cellpadding="10px">
               
                <tr><td>Account Number</td><td><input type="number" name="accno"></td>
                <tr><td>Name</td><td><input type="text" name="name"></td>
                <tr><td>Password</td><td><input type="password" name="pswd"></td>
                <tr><td>Amount</td><td><input type="number" name="amt"></td>
                <tr><td></td><td><input type="submit" value="Withdraw Amount"></td></tr>
            </table><br>
            </form>
        </div>
</body>
</html>
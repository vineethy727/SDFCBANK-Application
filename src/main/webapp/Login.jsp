<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page </title>
 <style>
            div
            {
                margin: auto;
                width: 400px;
                background-color: white;
                box-shadow: 2px;
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
                
            }
            body{
                background-image: url("ems3.jpg");
                background-repeat: no-repeat;
                background-size: 1600px;
                
            }
            
        </style>
</head>
<body>
	 <div class="log"><br>
            <h3 align="center">User Login</h3>
            <form action="LoginCode.jsp" method="post">
                <table align="center" cellpadding="5px">
                    <tr><td>Name</td><td><input type="text" name="name"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="pswd"></td></tr>
                    <tr><td></td><td><input type="submit" value="login"></td></tr>
                    <tr><td colspan="2"><a href="Registration.jsp">click here to register</a></td></tr>
                </table><br>
            </form>
        </div>
</body>
</html>
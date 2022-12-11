<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<style>
			body
			{
				
			}
             div
            {
                margin: auto;
                width: 400px;
                background-color: white;
                box-shadow: 2px;
                border-radius: 25px;
               
            }
            body
            {
                background-image: url("ems55.png");
                background-size: 1550px 800px;
                background-repeat: no-repeat;
            }
            input{
                border-radius: 20px;
                padding: 7px;
            }
            h3
            {
                font-size: 30px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                text-align: center;
            }
           
        </style>
</head>
<body>
<div><br>
            <h3>Registration Form</h3>
            <form action="RegistrationCode.jsp" method="post">
                <table align="center" cellpadding="3px">
                    <tr><td>Name</td><td><input type="text" name="name"></td></tr>
                    <tr><td></td><td><span id="sname" ></span></td></tr>

                    <tr><td>Password</td><td><input type="password" name="pswd"></td></tr>
                    <tr><td></td><td><span id="spswd" ></span></td></tr>
                    
                    <tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
                    <tr><td></td><td><span id="scpswd" ></span></td></tr>
					
					<tr><td>Account Number</td><td><input type="number" name="accno"></td></tr>
                    <tr><td></td><td><span id="saccno" ></span></td></tr>
					
					<tr><td>Amount</td><td><input type="number" name="amt"></td></tr>
                    <tr><td></td><td><span id="samt" ></span></td></tr>
                    
                    <tr><td>MobileNo</td><td><input type="tel" name="mobno"></td></tr>
                    <tr><td></td><td><span id="smobno" ></span></td></tr>

                    <tr><td>Email</td><td><input type="email" name="mail"></td></tr>
                    <tr><td></td><td><span id="smail" ></span></td></tr>

                    <tr><td>Gender</td><td><input type="radio" value= "male" name="gender">Male<input type="radio" value="female" name="gender">Female</td></tr>
                    <tr><td></td><td><span id="sgender" ></span></td></tr>

                    <tr><td>Address</td><td><input type="text" name="addr"></td></tr>
                    <tr><td></td><td><span id="saddr" ></span></td></tr>

                    <tr><td>City</td><td><input type="text" name="city"></td></tr>
                    <tr><td></td><td><span id="scity" ></span></td></tr>

                    <tr><td>state</td><td><input type="text" name="state"></td></tr>
                    <tr><td></td><td><span id="sstate" ></span></td></tr>
                    
                    <tr><td><input type="reset" value="reset"></td><td><input type="submit" value="submit"></td></tr>  
                    
                    <tr><td colspan="2"><a href="Login.jsp">already a user? click here to login</a></td></tr>
                </table><br>
                <br>
            </form>
        </div>
</body>
</html>
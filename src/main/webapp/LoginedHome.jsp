<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
<style>
           .tit
            {
                font-size: 70px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                color: darkslateblue;
                text-align: center;
                text-shadow: black 10px 15px 20px;
            }
            .nav1
            {
                background-color: darkslateblue;
                border-radius: 20px;
            }
            .nav2
            {
                background-color: darkslateblue;
                border-radius: 20px;
                font-size: 10px;
                font-family: Verdana, Geneva, Tahoma, sans-serif;
                color: darkslateblue;
                text-align: center;
            }
            .wel
            {
                text-align: center;
                font-size: x-large;
            }
            ul{
                display: flex;
                padding: 10px;
                list-style: none;
            }
            li{
                
                padding: 2px 50px;
                border: 1px solid (23, 74, 123);
            }
           
            img
            {
                height: 980px;
                width: max-content;
            }
            a
            {
                color: white;
                text-decoration: none;
                font-size: large;
            }
            body
            {
                background-image: url("EMS1.jpg");
                background-repeat: no-repeat;
                background-size: 1550px 900px;
                font-size: large;
            }
            img
            {
                width: 200px;
                height: 250px;
                border: 3px solid rgb(23, 74, 123);
                border-radius: 25px;
            }
        </style>
</head>
<body>
	 <div class="tit">SFDC BANK</div>
        <div class="nav1">
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="">Services</a></li>
                <li><a href="Balance.jsp">Balance</a></li>
                <li><a href="Deposit.jsp">Deposit</a></li>
                <li><a href="Withdraw.jsp">Withdraw</a></li>
                <li><a href="Transfer.jsp">Transfer</a></li>
                <li><a href="CloseAcc.jsp">CloseA/C</a></li>
                <li><a href="AboutUs.jsp">AboutUs</a></li>
                <li><a href="">Logout</a></li>
                
            </ul>
        </div>
        <div class="wel"><marquee behavior="left" direction="left" style="color: darkslateblue;">Welcome to SDFC Bank Home Page. All your banking needs at one stop.Get personal Loans, vehicle Loans, car loans, Bike loans at low interest.</marquee></div>
       <div>
            <p>SDFC bank is most trusted bank in india for more than 23 years of good relationship with customer <br>we have  1000+ branches all over the country inevery state <br> </p>
            <p>All types of loan are available here that includes bikes cars agricultural, loans with very less interest rate and 0% interest for clearance of loan witin 6 months of period <br>For loan application <a href="application.html"> click here</a></p>
            <p>All onlinne shoopinp can be done from thi one place. Use the bank debit or credit card to get amazing offers on the product. <br> And special offers on bank credit card that has huge discounts. <br> For online shopping <a href=""> click here</a> </p>
            <p>For any commpliants regaring the account or debit or credit cards or cheque books or charges or any other complaints. <br> you can register your complant make improve better. for compliant registration please <a href="complaints.html">click here</a></p>
        </div><br>
         <table cellpadding="20px"><tr><td><img src="personalloan.jpg" width="10px" height="10px" ></td><td><img src="houseloan.jpg" width="10px" height="10px" ></td><td><img src="carloan.jpg" width="10px" height="10px" ></td><td><img src="agriculture.jpg" width="10px" height="10px" ></td><td><img src="bikeloan.jpg" alt="" width="200px" height="300px" ></td></tr></table>
</body>
</html>
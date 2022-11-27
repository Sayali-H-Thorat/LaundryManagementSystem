<!DOCTYPE html>
<html>
<head>
<title>Customer Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
<center>
button
{
background-color:black;
color:white;
}
div {background-image: url('L14.jpg.jpg');
 background-height: 100%;
  background-repeat: no-repeat;
    background-position: bottom;
      background-size: cover;
height:10000px;
width:10000px;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color:BLACK;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black
}

.topnav a.active {
  background-color: powder blue;
  color:black;
}
marquee{
font-size:30px;
font-weight:800;
color:red ;
font-family: sans-serif;
}
.dropbtn {
  background-color:#A9A9A9;
  color: blue;
  padding: 18px;
  font-size: 18px;
  border: none;
}

.dropdown {
  position: relative;
  display:block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #0000000;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}
.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
<body>
<marquee><blink>!!!SPARK LAUNDRY SERVICE!!!!</blink></marquee>
<form action="Successfull.jsp" method="POST">
<div class="topnav">

 <cenetr><br><br><br><br><br><br>
<center>        <a class="active" href="#home">Home</a>
         
       
         <a href="ServiceModule.jsp">Services</a>
         <a href="OrderModule.jsp">Order</a>
         <a href="BillModule.jsp">BILL</a> 
          <a href="Help.jsp">HELP</a> 
         <a href="changepw.jsp">Change Password</a>
         <a href="finalhomepage.jsp">Logout</a>
  </div>
 </div>
 </center>
 </center>
  </div>
 </form>
</body>
</html>
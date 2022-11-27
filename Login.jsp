<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
button
{
background-color:skyblue;
color:black;
}
div {background-image: url('L2.jpg.jpg');
height:500px;
}
</style>
</head>
<body>
<div>
<b>
<form action="loginsuccess.jsp" mothod="post">
<center><h1>User Login</h1></center>
<center>username:<input type="text" name="username"><br><br></center>
<center>Password:<input type="password" name="password"><br><br></center>
<center><input type="submit" value="login"></center><br>
</form></b>
</div>
</body>
</html>
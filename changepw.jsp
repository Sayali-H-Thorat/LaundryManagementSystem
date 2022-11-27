<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<style>
<style>
button
{
background-color:skyblue;
color:black;
}
div {background-image: url('L4.jpg.jpg');
height:500px;
 background-repeat: no-repeat;
    background-position: bottom;
      background-size: cover;
}
</style>
</head>
<body>
<form>
<div>
<b>
<center><h1>Change Password</h1></center>
<center>Old Password:<input type="text" name="Oldpassword"><br><br></center>
<center>New Password:<input type="text" name="Newpassword"><br><br></center>
<center>Confirm Password:<input type="text" name="Confirmpassword"><br><br></center>
<center><input type="submit" value="Submit"></center><br>
<%

	String Oldpw=request.getParameter("Oldpassword");
	String Newpw=request.getParameter("Newpassword");
	String Confirmpw=request.getParameter("Confirmpassword");
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Password","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into pass values('"+Oldpw+"','"+Newpw+"','"+Confirmpw+"')");
}
catch(Exception e)
{
}
%>
</form></b>
</div>
</body>
</html>
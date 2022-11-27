<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
<style>
button
{
background-color:skyblue;
color:black;
}
</style>
</head>
<head>
<style>
body {
  background-image: url("l7.jpg");
   background-height: 100%;
  background-repeat: no-repeat;
    background-position: center;
      background-size: cover;
}
</style>
</head>
<body>
<form>
<div>
<b>
<br><br><br><center><h1>Customer Login</h1></center>
<center>username:<input type="text" name="username"><br><br></center>
<center>Password:<input type="password" name="password"><br><br></center>
<center><button class="button" type="submit" formaction="Homepage.jsp">Login</button> </center><br>
<center><button class="button" formaction="custom.jsp">New Customer Registration</button> </center><br>


<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from admin where u_name='"+username+"' and pw='"+password+"'");
	if(password!=null)
	{
	if(rs.next())
	{
		response.sendRedirect("http://localhost:8080/SparkLaundry/Homepage.jsp");
	}
	else
	out.print("<center><font size=10>Invalide username and password</font></center>");
}
}
catch(Exception e)
{
	}
%>
</div></b>
</form>
</body>
</html>
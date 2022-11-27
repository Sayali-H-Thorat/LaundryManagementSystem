<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> </title>
<style>
button
{
background-color:skyblue;
color:black;
}
div {background-image: url('L2.jpg.jpg');
height:738px;
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
<br>
<br>
<center><h1>Admin Login</h1></center>
<center>username:<input type="text" name="username"><br><br></center>
<center>Password:<input type="password" name="password"><br><br></center>
<center><button class="button" type="submit">Login</button> </center><br>
<center><button class="button" formaction="adminregister.jsp">New Admin Registration</button> </center><br>
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
		response.sendRedirect("adminpage.jsp");
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
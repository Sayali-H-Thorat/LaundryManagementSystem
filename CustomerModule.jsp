<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<style>
button{
background-color:skyblue;
color:black;
}
div {
background-image: url('L1.jpg.jpg');
height:500px;
}
</style>
</head>
<body>
<div>
<font color="BLACK">
<b>
<form><br>
<center><button class="button" formaction="CustList.jsp">View Customer</button> </center><br>
<center><h1>Customer Module</h1></center>
<center>First Name:<input type="text" name="FirstName"><br><br></center>
<center>Middle Name:<input type="text" name="MiddleName"><br><br></center>
<center>Last Name:<input type="text" name="LastName"><br><br></center>
<center>Mobile No:<input type="number" name="MobileNo"><br><br></center>
<center>Address:<input type="text" name="Address"><br><br></center>
<center>User Name:<input type="text" name="UserName"><br><br></center>
<center>Password:<input type="password" name="Password"><br><br></center>
<center>User type:<input type="text" name="UserType"><br><br></center>
<center>Email ID:<input type="text" name="EmailID"><br><br></center>
<center><input type="submit" value="Submit"></center><br>
<%
String Fname=request.getParameter("FirstName");
String Mname=request.getParameter("Middlename");
String Lname=request.getParameter("Lastname");
String mobile=request.getParameter("MobileNo");
String Add=request.getParameter("Address");
String uname=request.getParameter("Username");
String pw=request.getParameter("Password");
String uType=request.getParameter("UserType");
String EID=request.getParameter("EmailID");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into customer values('"+Fname+"','"+Mname+"','"+Lname+"','"+mobile+"','"+Add+"','"+uname+"','"+pw+"','"+uType+"','"+EID+"')");
out.println("Submitted");
}
catch(Exception e)
{
}
%>

</form></b>
</font>
</div>
</body>
</html>
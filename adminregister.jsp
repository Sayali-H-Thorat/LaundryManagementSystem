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
<form>
<div>
<font color="BLACK">
<b>
<br>
<center><h1>Admin Module</h1></center>
<center>First Name:<input type="text" name="FirstName"><br><br></center>
<center>Middle Name:<input type="text" name="MiddleName"><br><br></center>
<center>Last Name:<input type="text" name="LastName"><br><br></center>
<center>Mobile No:<input type="number" name="MobileNo"><br><br></center>
<center>Address:<input type="text" name="Address"><br><br></center>
<center>User Name:<input type="text" name="UserName"><br><br></center>
<center>Password:<input type="password" name="Password"><br><br></center>
<center>Email ID:<input type="text" name="EmailID"><br><br></center>
<center><input type="submit" value="Submit"></center><br>
<center><input type="submit" value="login page" formaction="adminpage.jsp"></center><br>
<%
String Fname=request.getParameter("FirstName");
String Mname=request.getParameter("MiddleName");
String Lname=request.getParameter("LastName");
String mobile=request.getParameter("MobileNo");
String Add=request.getParameter("Address");
String uname=request.getParameter("UserName");
String pw=request.getParameter("Password");
String EID=request.getParameter("EmailID");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Admin","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into admin values('"+Fname+"','"+Mname+"','"+Lname+"','"+mobile+"','"+Add+"','"+uname+"','"+pw+"','"+EID+"')");
         out.println("<br><center>SUBMITED <br>\n<br> CLICK LOGIN PAGE</center>");
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
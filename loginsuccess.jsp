<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration successfull</title>
</head>
<body>

</body><b>
<%

	String username=request.getParameter("username");
	String password=request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/laundry1","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into Login values('"+username+"','"+password+"')");
out.println("Registration Successful!!");
}
catch(Exception e)
{
out.print(e);
}
%>
</body></b>
</html>
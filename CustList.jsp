<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
<style>
table,th,tr{
border:solid;
padding:6px 6px;
}</style>
</head>
<body>
<form>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/customer","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from customer");
out.print("<table><tr><th>NAME</th><th>MOBILE NO</th><th>ADDRESS</th><th>USER_TYPE</th><th>EMAIL_ID</th></tr>");
while(rs.next())
{
out.print("<tr><th>"+rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"</th><th>"+rs.getString(4)+"</th><th>"+rs.getString(5)+"</th><th>"+rs.getString(8)+"</th><th>"+rs.getString(9)+"</th></tr>");
}
out.print("</table>");
}
catch(Exception e)
{
	out.print(e);
}%>
</form>
</body>
</html>
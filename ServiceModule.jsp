
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ORDER</title>
</head>
<body>
<HTML>
<body>
<FORM method="POST" ACTION="sport.jsp">
<center>
Select services: <br><br>
<table>
<tr>
	<td> 
		<input TYPE=checkbox name=sports VALUE=whashing>
	</td>	 
	<td>	
		whashing 
	</td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox name=sports VALUE=drycleaner>
	</td>	 
	<td>	
		drycleaner
	</td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox name=sports VALUE=Press>
	</td>	 

	<td>	
	Press
	</td>
</tr>
</table>

<br>
<br>

Select Categary: <br><br>
<table>
<tr>
	<td> 
		<input TYPE=checkbox name=sport VALUE=Ladies>
	</td>	 
	<td>	
		Ledys 
	</td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox name=sport VALUE=Gents>
	</td>	 
	<td>	
		Gents
	</td>
</tr>

<tr>
	<td> 
		<input TYPE=checkbox name=sport VALUE=Childrens>
	</td>	 

	<td>	
	Childrens
	</td>
</tr>
</table>
<br><br>
Quantity   : <input type="text" name="inputText" >
<br><br>
<br> <INPUT TYPE=submit name=submit Value="Submit">
<%
String Wash=request.getParameter("washing");
String Dryclean=request.getParameter("dry");
String Press=request.getParameter("pressing");
String Ladies=request.getParameter("lady");
String Gents=request.getParameter("gents");
String Childrens=request.getParameter("child");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Services","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into serv values('"+Wash+"','"+Dryclean+"','"+Press+"','"+Ladies+"','"+Gents+"','"+Childrens+"')");
         
}
catch(Exception e)
{
}
%>

</center>
</FORM>
</BODY>
</HTML>
</body>
</html>
</body>
</html>
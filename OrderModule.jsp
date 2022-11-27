
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SELECTED ITEM</title>
</head>
<body>
<html>
<body>
<br><br><br>
<form action="BillModule.jsp">
<%! String[] sports; %>
<center><font size="5" color="blue">You have selected Servies  : </font>
<% 
   sports = request.getParameterValues("sports");
   if (sports != null) 
   {
      for (int i = 0; i < sports.length; i++) 
      {
         out.println ("      <br>      "+sports[i]+"   <br>");
      }
   }
   else out.println ("<b>none<b>");
%>

<br><br><br><br><br>
<%! String[] sport; %>
<center><font size="5" color="blue">You have selected Categary: </font>
<% 
   sport = request.getParameterValues("sport");
   if (sports != null) 
   {
      for (int i = 0; i < sport.length; i++) 
      {
         out.println ("<br>"+sport[i]+"<br>");
      }
   }
   else out.println ("<b>none<b>");
%>
<br><br><br><br><br>
<font size="5" color="blue"> Qunatity is :</font>  <%=request.getParameter("inputText") %>
 <br>
 <br><br>
<br>
<br> <INPUT TYPE=submit name=submit Value="Submit">

</form>
 <br>
 <br><br>
<br>
 <a href="NewFile.jsp">RESET</a>
 <br>
 <br><br>
<br>
  
 </form>
</center>
</body>
</html>
</body>
</html>
</body>
</html>
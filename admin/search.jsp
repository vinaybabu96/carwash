<%@ page import="java.sql.*" %>
<html>
<body style="background-color: powderblue;">

<center>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
Statement st=con.createStatement();
String city = request.getParameter("MovieName");
String one = "Hyderabad";
String two = "Chennai";

if(city.equals(one) || city.equals(two))
{
response.sendRedirect(" "+city+".jsp ");
}
else
{
	
	out.print("The Movie you have entered is not available");
	
}

con.close();
%>
<div class="Home">
<a href=index.html>Back to Home page</a>
</div>
</center>

</body>
</html>

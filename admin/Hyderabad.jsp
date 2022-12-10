<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3></h3>
<table class="content-table">
<thead>
<tr>
<th>Day</th>
<th>Remaining</th>
</tr>
</thead>

<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

if(session.getAttribute("User_id")==null)
response.sendRedirect("login.html");


%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("cityname");
String dat = request.getParameter("dat");
Statement st=con.createStatement();
// String Hyd = "Hyderabad";



ResultSet rs=st.executeQuery("select * from locations where place='"+id+"' and Day='"+dat+"'");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Day") %> </td>
<td><%=rs.getString("Remaining") %> </td>
</tr>
<%
}
con.close();
%>
<div class="Home">
<a href=index.jsp>Back to Home page</a>
<center>
</center>
</div>
</center>
</table>
</body>
</html>

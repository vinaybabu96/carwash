<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>SERVICE BOOKINGS</h3>
<table class="content-table">
<thead>
<tr>
<th>USER-ID</th>
<th>PLACE</th>
<th>DAY</th>
<th>SERVICE</th>
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
String id=request.getParameter("");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from personlog where personid in (select User_id from register where b='1')");
while(rs.next())
{   
%>
<tr>
<td><%=rs.getString("personid") %> </td>
<td><%=rs.getString("personplace") %> </td>
<td><%=rs.getString("personday") %> </td>
<td><%=rs.getString("servicetype") %> </td>
</tr>
<%
}
con.close();
%>
<div class="Home">
<a href=index.jsp>Back to Home page</a>
</div>
</center>
</table>
</body>
</html>

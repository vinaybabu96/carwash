<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>Availability</h3>
<table class="content-table">
<thead>
<tr>
<th>Day</th>
<th>Remaining</th>
<th>Service Type</th>
</tr>
</thead>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id=request.getParameter("cityname");
Statement st=con.createStatement();
// String Hyd = "Hyderabad";



ResultSet rs=st.executeQuery("select * from locations where place='"+id+"'");
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Day") %> </td>
<td><%=rs.getString("Remaining") %> </td>
<td><%=rs.getString("servicetype") %> </td>
</tr>
<%
}
con.close();
%>
<br>
<center>
    <a href=bookslot.html>BOOKSLOT</a>
    </center>
<div class="Home">
<a href=index.jsp>Back to Home page</a>

</div>
</center>
</table>
</body>
</html>

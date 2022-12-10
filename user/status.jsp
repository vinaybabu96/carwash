<%@ page import="java.sql.*" %>
<html>
<body style="background-color:powderblue;">
<link rel="stylesheet" type="text/css" href="css/style4.css">
<center>
<h3>Movie Reviews</h3>
<table class="content-table">
<thead>
<tr>
<th>Name</th>
<th>Movie</th>
<th>Review</th>
</tr>
</thead>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
Statement st=con.createStatement();
String id2=session.getAttribute("User_id").toString();
ResultSet rs=st.executeQuery("select * from register where User_id = '"+id2+"'");

while(rs.next())
{
    
    String t = rs.getString("b");
    if(t.equals("0")){
        response.sendRedirect("success.html");
    }
    
    else if(t.equals("1")){
        response.sendRedirect("pending.html");
    }
    else if(t.equals("2")){
        response.sendRedirect("rejected.html");
    }
%>

<%
}
con.close();
%>
<div class="Home">
<a href=index.html>Back to Home page</a>
</div>
</center>
</table>
</body>
</html>

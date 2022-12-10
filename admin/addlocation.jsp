<%@ page import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String Name=request.getParameter("place");
String Movie=request.getParameter("day");
String Review=request.getParameter("num");
String service=request.getParameter("service");


PreparedStatement ps=con.prepareStatement("insert into locations values(?,?,?,?)");
ps.setString(1,Name);
ps.setString(2,Movie);
ps.setString(3,Review);
ps.setString(4,service);
int r=ps.executeUpdate();
if(r==0)
out.println("failure");
else
response.sendRedirect("addsuccess.html");
con.close();
%>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
String id = request.getParameter("id");
String approve = request.getParameter("approve");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where User_id='"+id+"'");
while(rs.next())
{
	int k = Integer.parseInt(approve);
int added=k;
String c = String.valueOf(added);
PreparedStatement psa=con.prepareStatement("update register SET b = '"+c+"' where User_id='"+id+"'");
int r=psa.executeUpdate();
}

response.sendRedirect("addsuccess.html");










con.close();
%>

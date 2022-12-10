<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eg_one", "root", ""); 
// String id=session.getAttribute("User_id").toString();
String place = request.getParameter("place");
String Day = request.getParameter("Day");
String service = request.getParameter("service");
String name = "any";
// String name;
String id=session.getAttribute("User_id").toString();

// Statement st1=con.createStatement();
// ResultSet rs1=st1.executeQuery("select * from register where User_id = '"+id+"'");
// while(rs1.next())
// {
// name = rs1.getString("Name").toString();
// name = "any";
// }


// String id = "2";
PreparedStatement ps=con.prepareStatement("insert into personlog values(?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,place);
ps.setString(4,Day);
ps.setString(5,service);
int rr = ps.executeUpdate();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from locations where place='"+place+"' and servicetype = '"+service+"'");
while(rs.next())
{
	String a = rs.getString("Remaining");
	int b = Integer.parseInt(a);
	
int added=b-1;
if(added>=0){
String c = String.valueOf(added);
PreparedStatement psa=con.prepareStatement("update locations SET Remaining = '"+c+"' where place='"+place+"' and servicetype = '"+service+"'");
int r=psa.executeUpdate();
response.sendRedirect("successful.html");




}
else{
	response.sendRedirect("loginfailure.html");

}

}












con.close();
%>

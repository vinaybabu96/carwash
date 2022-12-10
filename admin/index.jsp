<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<%


response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

if(session.getAttribute("User_id")==null)
response.sendRedirect("login.html");


%>

	<header>
		<div class="main">
		<div class="logo">
		<img src="carwashlogo.jpg">
		</div>
			<ul>
				<li><a href="readlocation.jsp"><b>Bookings</b></a></li>

				<li><a href="location.html"><b>Search</b></a></li>
				<li><a href=approve.html><b>Approve</b></a></li>
				<li><a href=addlocation.html><b>Add</b></a></li>
				<li><a href=Logout.jsp><b>Logout</b></a></li>
			</ul>
			</div>
			<div class="title">
				<h1></h1>
			</div>
			
				
			
			
			<div class="tab2">
	<!-- 		<form name="f1" method="POST" action="Hyderabad.jsp">
<table>
<tr>
<td>Search For Your Favourite Movie :</td>
<td><input type="text" name="MovieName"></td>
<td><input type="submit" value="Search"></td>



</tr>

</table>
				</form> -->
</div>			
		</header>			
		
</body>
</html>
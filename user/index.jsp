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
				
				<li class="active"><a href="readlocation.jsp"><b>Locations</b></a></li>
				
				<li class="active"><a href="location.html"><b>Search</b></a></li>
				<li class="active"><a href=status.jsp><b>Status</b></a></li>
				<li class="active"><a href=reset.jsp><b>Reset</b></a></li>

				<li class="active"><a href=Logout.jsp><b>Logout</b></a></li>
			</ul>
			</div>
			<div class="title">
				<h1></h1>
			</div>
			
				
			
			
			<div class="tab2">

</div>			
		</header>			
		
</body>
</html>
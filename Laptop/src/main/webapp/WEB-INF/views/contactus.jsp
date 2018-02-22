<!DOCTYPE html>

<html lang="en">
<head>
  <title>ContactUs</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <link href="<c:url value="/resources/css/Contact.css" />" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style type="text/css">
   body {
	background-image: url("./resources/images/asd.jpg");
	background-repeat: no-repeat;
	background-size:100%;
	
}
   </style>
  
</head>
<body>

<nav class="navbar navbar-inverse  navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="color: white;">Laptop</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li ><a href="/Laptop/homes">Home</a></li>
					  <li><a href="displayproducts">Products</a></li>   
					<li><a href="/Laptop/aboutus">About</a></li>
					<li class="active"><a href="contactus">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="register"><span
							class="glyphicon glyphicon-user"></span>Register</a></li>
					 <li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
			
				</ul>
			</div>
		</div>
	</nav>
<br><br> 

           
  <h1 style="text-align:center">  WE ARE HAPPY TO SERVICE YOU ! ! </h1>
   
    
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                
             <br><br><br> <br><br><br><br>
             <%@include file="commonfooter.jsp" %>
</body>
</html>			
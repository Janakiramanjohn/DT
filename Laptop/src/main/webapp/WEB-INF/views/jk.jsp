<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/portfolio-item.css" rel="stylesheet">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>Laptop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
</script>



<style>
.navbar {
	margin-bottom: 0;
	z-index: 9999;
	border: 0;
	font-size: 10px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 5px;
	border-radius: 0;
}

.container {
	padding: 16px 16px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 25px 20px;
	text-decoration: none;
}

li a.active {
	background-color: #4CAF50;
	color: white;
}

li {
	float: left;
	font-size: 15px;
}

h1 {
	text-align: center;
}

input[type=text] {
	width: 270px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-position: 10px 5px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 60px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
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
			<a class="navbar-brand" href="" style="color: white;"> Laptop</a>
		</div>

		<c:choose>
			<c:when test="${sessionScope.UserLoggedIn != null}">
				<li><a href="home">Home</a></li>
				<li><a href="/Laptop/raboutus"><font color="#ffffff">About
							Us</font></a></li>
				<li><a href="/Laptop/rcontactus"><font color="#ffffff">Contact
							Us</font></a></li>
				<li><a id="rg" href="/Laptop/rdisplayproducts">Products</a></li>
				<li class="dropdown" style="border:none;color:black;font-size: 30px">Category Name 
				<li style="border:none;color:black;font-size: 30px"><form:select name="CustomerId" path="catid" style="color:black;height:45px;width:400px">
						<option value="-1" selected>select..</option>
						<c:forEach var="category" items="${catlist}">
							<option value="${category.catid}">${category.catname}</option>
						</c:forEach>
         </form:select></li>
		 	
					</li>
				<ul class="nav navbar-nav navbar-right">


					<li id="ct"><a href="/Laptop/addcart"><span
							class="glyphicon glyphicon-shopping-cart">Cart</span></a></li>
					<li><a href="/Laptop/perform_logout"><span
							class="glyphicon glyphicon-log-out"></span>logout</a></li>

				</ul>

				<br>
				<br>
				<br>

			</c:when>

			<c:otherwise>
				<c:choose>
					<c:when test="${sessionScope.LoggedIn != null}">
						<ul class="nav navbar-nav">
							<li><a href="Category">Category</a></li>
							<li><a href="Supplier">Supplier</a></li>
							<li><a href="Product">Product</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="perform_logout"><span
									class="glyphicon glyphicon-log-out"></span> logout</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="nav navbar-nav">
							<li class="active"><a href="/Laptop/homes">Home</a></li>
							<li><a href="/Laptop/displayproducts">Products</a></li>

							<li><a href="/Laptop/aboutus">About</a></li>
							<li><a href="/Laptop/contactus">Contact</a></li>

						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="register"><span
									class="glyphicon glyphicon-user"></span><font id="nr">Register</font></a></li>
							<li><a href="login"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</ul>
					</c:otherwise>
				</c:choose>

			</c:otherwise>
		</c:choose>


		<p>${sessionScope.UserLoggedIn}</p>
	</div>
	</div>
	</nav>         rgoo]
</body>
</html> 6oi5tf5	fj9+++
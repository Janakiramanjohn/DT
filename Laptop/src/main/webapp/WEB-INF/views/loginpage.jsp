<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #85adad"> 
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
					<li class="active"><a href="/Laptop/homes">Home</a></li>
				 <li><a href="displayproducts">products</a></li>  
					<li><a href="/Laptop/aboutus">About</a></li>
					<li><a href="contactus">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="register"><span
							class="glyphicon glyphicon-user"></span>Register</a></li>
					 
				</ul>
			</div>
		</div>
	</nav>
<center>

<br/>
<div align="justify">
<div align="center">

<div class="container" style="margin-top:40px" ">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div style="background-color:#00b38f" class="panel-heading">
						<strong> Sign Up here</strong>
					</div>
					<br/>
					<div align="center">
					
					</div>
					<div class="panel-body">
						<form action="perform_login" method="post">
							
							<fieldset>
								<div class="row">
									<div class="center-block">
										
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input  class="form-control" placeholder="Username" required id="username" name="username" type="text"/><!-- pattern=".{5,10}" title="minimum length for username is 20"/> -->
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" required name="password" type="password" title="Enter Valid credentials"/>
											</div>
										</div>
										<div class="form-group">
											<input style="background-color:#70db70" type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
										</div>
									</div>
								</div>
							</fieldset></form>
							
					</div>
					</div>
					<div class="panel-footer ">
						New User? <a href="register" onClick=""> Sign Up Here </a>
						</br>
						 
					</div>
					
                </div>
			</div>
		</div>
	</div>
	</div>
<br><br><br>
	<jsp:include page="commonfooter.jsp"></jsp:include>

</center>


</body>
</html>
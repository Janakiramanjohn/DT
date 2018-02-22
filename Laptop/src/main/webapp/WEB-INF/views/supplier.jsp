<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<title>Laptop</title>
<style type="text/css">
body {
/* 	background-image: url("./resources/images/2.jpg"); */
	background-size:300%;
	background-repeat:no-repeat;
	background-color: #ffffcc; 
}
nav
{

height: 100px;

}
 
nav p,ul,li
{
margin-top: 25px
font-size:20px;
}
</style>

</head>
<body>

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
     
     <div class="navbar-brand"><p>Laptop</p></div>
    </div>
    
    
    <ul class="nav navbar-nav">
      <li ><a href="/Laptop/loginsuccess">Home</a></li>
      <li><a href="Category">Add Category</a></li>      
      <li><a href="Product">Add Product</a></li> 
      <li class="active"><a href="Supplier">Add Supplier</a></li> 
      <li><a href="perform_logout"><span
						class="glyphicon glyphicon-log-out"></span>logout</a></li>
      
    </ul>

  </div>
</nav>


<div class="container">
  <div class="jumbotron">

  
<form:form action="SaveSupplier" method="post" commandName="supplier" style="margin-left:250px;width:30%;">

    <form:input type="hidden" path="supplierid" class="form-control" placeholder="supplier id"/><br>
    <br><label><b style="color:black;font-size: 30px">Supplier Name</b></label>
    <form:input type="text" path="suppliername" class="form-control" style="color:black;height:65px;width:500px" placeholder="supplier name"/><br>
     <br><label><b style="color:black;font-size: 30px">Supplier Description</b></label>
    <form:input type="text" path="supplieraddress" class="form-control" style="color:black;height:65px;width:500px" placeholder="supplier description"/><br>
      <td ><input class="btn btn-success btn-lg" style="margin-left:100px;color:black;width:300px" type="submit" value="submit">
</form:form> 
 
</div></div>

<br><br><br><br>
<div class="container">
 
 <div>   
<table style="width:100%" class="table table-hover">
            <tr style="border-bottom:6px solid black;">
                <th>SUPPLIER ID</th>
                <th>SUPPLIER NAME</th>
                <th>SUPPLIER ADDRESS</th>
               
               <th>EDIT</th>
                <th>DELETE</th>
                
            </tr>

            <c:forEach items="${suplist}" var="supplier">
                <tr  style="border-bottom:3px solid orange;">
                    <td>${supplier.supplierid}</td>
                    <td>${supplier.suppliername}</td>
                    <td>${supplier.supplieraddress}</td>
                     <td><a  class="btn btn-info" href="supplieredit?sid=${supplier.supplierid}">Edit<span class="glyphicon glyphicon-pencil"></span></a></td> 
                    <td><a  class="btn btn-danger" href="supplierdelete?sid=${supplier.supplierid}">Delete<span class="glyphicon glyphicon-trash"></span></a></td>
                   
				</tr>
			</c:forEach>
</table>		
</div></div>

<br><br><br><br><br><br><br><br>
</body>
</html>
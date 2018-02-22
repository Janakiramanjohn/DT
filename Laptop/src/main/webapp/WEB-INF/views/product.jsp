<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<title>Laptop</title>
<style type="text/css">
body {
/* 	background-image: url("./resources/images/2.jpg"); */
	background-size:300%;
	background-repeat:no-repeat;
	 background-color: #ffffcc; 
}

#tx tr
{

border-style:none;
}
nav
{

height: 100px;

}
 
nav p,ul,li
{
font-size:20px;
margin-top: 25px

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
      <li class="active"><a href="Product">Add Product</a></li> 
      <li><a href="Supplier">Add Supplier</a></li> 
      <li><a href="perform_logout"><span
						class="glyphicon glyphicon-log-out"></span>logout</a></li>
      
    </ul>

  </div>
</nav>


<div class="container">
  <div class="jumbotron">

<div id="tx">

	
		<form:form action="saveProduct" commandName="product" method="post"
			enctype="multipart/form-data" style="width:100%;">
			<table class="table" style="width:100%;" align="center">
	

                <tr style="border:none" >
					<td  style="border:none" ><form:input type="hidden" path="id" /></td></tr> 
				<tr>
					<th style="color:black;border:none;font-size: 30px">Product Name</th>
					<td style="border:none;color:black"><form:input type="text" path="name" style="color:black;height:45px;width:400px;"/></td>
				</tr>
				<tr>
					<th style="border:none;color:black;font-size: 30px">Product Price</th>
					<td style="border:none;color:black"><form:input type="text" path="prize" style="color:black;height:45px;width:400px"/></td>
				</tr>
				<tr>
					<th style="border:none;color:black;font-size: 30px">Quantity</th>
					<td style="border:none;color:black"><form:input type="text" path="quantity" style="color:black;height:45px;width:400px"/></td>
				</tr>
				<tr>
					<th style="border:none;color:black;font-size: 30px">Descrption</th>
					<td style="border:none;color:black"><form:input type="text" path="descrption" style="color:black;height:45px;width:400px"/></td>
				</tr>
			<tr>	<th style="border:none;color:black;font-size: 30px">Category Name</th>
				<td style="border:none;color:black;font-size: 30px"><form:select name="CustomerId" path="catid" style="color:black;height:45px;width:400px">
						<option value="-1" selected>select..</option>
						<c:forEach var="category" items="${catlist}">
							<option value="${category.catid}">${category.catname}</option>
						</c:forEach>
         </form:select></td>
		</tr>	<tr>	<th style="border:none;color:black;font-size: 30px">Supplier</th>
				<td style="border:none;color:black;font-size: 30px"><form:select path="Supplierid" style="border:none;color:black;height:45px;width:400px">
						<option value="-1">select..</option>
						<c:forEach var="sup" items="${suplist}">
							<option value="${sup.supplierid}">${sup.suppliername}</option>
						</c:forEach>
					</form:select></td></tr>
				<tr style="border:none;">
					<td style="border:none;">
						<h3 style="border:none;color:black;font-size: 30px">Upload an Image</h3></td><td style="border:none;">
						<input class="btn btn-success btn-lg" style="border:none;color:black" type="file" name="pimage"></td>
				</tr>
				<tr>
				<td style="border:none;"> </td>
					<td style="border:none;"> </td>
				</tr>
				<tr>
				<td style="border:none;"> </td>
					<td style="border:none;"><input class="btn btn-success btn-lg"  style="border:none;color:black;width:200px" type="submit" value="Submit"></td>

				</tr>
			</table>
		</form:form></div></div></div>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>


<br><br><br><br>
<div class="container">


<table style="width:100%;" class="table table-hover">
            <tr style="border-bottom:5px solid black;">
               <th>PRODUCT IMAGE</th>
                <th>PRODUCT ID</th>
                <th> PRODUCT NAME</th>
            <!--     <th>CATEGORY</th>    -->
                <th> PRODUCT PRICE</th>
                <th> PRODUCT QUANTITY</th>
                <th>PRODUCT  DESCRIPTION</th>
                 <th>EDIT</th>
                <th>DELETE</th>
               
            </tr>

            <c:forEach items="${prolist}" var="product">
            <c:url value="/viewproduct/${product.id}" var="viewUrl"></c:url>
            <c:url value="/resources/images/${product.id}.jpg" var="imageUrl"></c:url>
                <tr style="border-bottom:3px solid orange;">
                <td><img src="${imageUrl }" height="50" width="50"></td>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
             <!--       <td>${product.category.catname }</td>     -->
                    <td>${product.prize}</td>
                    <td>${product.quantity}</td>
                    <td>${product.descrption}</td>
                     <security:authorize access="hasRole('ROLE_ADMIN')">
                    <td><a  class="btn btn-info" href="proedit?pid=${product.id}">Edit<span class="glyphicon glyphicon-pencil"></span></a></td> 
                    <td><a class="btn btn-danger" href="prodelete?pid=${product.id}">Delete<span class="glyphicon glyphicon-trash"></span></a></td>
                   
                    </security:authorize>
				</tr>
			</c:forEach>
</table>

</div>
	<br><br><br><br><br><br><br><br>
</body>
</html>

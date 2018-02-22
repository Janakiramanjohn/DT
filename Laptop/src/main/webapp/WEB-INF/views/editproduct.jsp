<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style type="text/css">
  </style>
<title>Laptop</title>
<script type="text/javascript">
    $(document).ready(function(){
        $("#myModal2").modal('show');
    });
</script>



</head>
<body>
<%-- <form:form action="editproduct" method="post" commandName="product"> --%>
<!--  <div class="register"> -->
<!--  <h3>Edit Product</h3> -->
<!--  <br> -->
<%--   <p> <label><b>Product id : </b></label><form:input type="text" path="id" value="${productdata.id}" required="true"/></p><br>  --%>
<%--  <p> <label><b>Product Name : </b></label><form:input type="text" path="name" value="${productdata.name}" required="true"/></p><br>   --%>
<%--    <p> <label><b>Product Price : </b></label><form:input type="text" path="prize" value="${productdata.prize}" required="true"/></p><br>  --%>
<%--  <p> <label><b>Product Quantity : </b></label><form:input type="text" path="quantity" value="${productdata.quantity}" required="true"/></p><br>   --%>
  
<%--   <p> <label><b>Product Description : </b></label><form:input type="text" path="descrption" value="${productdata.descrption}" required="true"/></p><br>   --%>
<!--    <p><button type="submit" class="btn btn-info btn-lg">ENTER</button><p> -->
<!-- </div> -->
<%-- </form:form> --%>







 
  <form:form action="editproduct" method="post" commandName="product">
 <div class="register">

<div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style=" background-color:#53c653;color:white; padding:35px 50px;">
          
          <h1>Edit Product</h1>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <h2> <label><b style="color:black;font-size: 30px">Product id</b></label> </h2> 
              <form:input type="text" path="id" value="${productdata.id}" required="true" style="color:black;height:45px;width:400px" /><br>
            </div>
             <div class="form-group">
               <h2>  <label><b style="color:black;font-size: 30px">Product Name </b></label> </h2> 
               
               <form:input type="text" path="name" value="${productdata.name}" style="color:black;height:45px;width:400px" required="true"/><br>  
            </div>
            <div class="form-group">
               <h2> <label><b style="color:black;font-size: 30px">Product Price </b></label></h2>
               <form:input type="text" path="prize" value="${productdata.prize}" style="color:black;height:45px;width:400px" required="true"/> <br>  
            </div>
            <div class="form-group">
               <h2> <label><b style="color:black;font-size: 30px">Product Quantity </b></label></h2>
               <form:input type="text" path="quantity" value="${productdata.quantity}" style="color:black;height:45px;width:400px" required="true"/> <br>  
            </div>
            <div class="form-group">
               <h2> <label><b style="color:black;font-size: 30px">Product Description</b></label></h2>
               <form:input type="text"  path="descrption" value="${productdata.descrption}"  style="color:black;height:45px;width:400px" required="true"/> <br>  
            </div>
             
            <div class="form-group">
                <p><button type="submit" class="btn btn-success btn-lg" style="margin-left:100px;color:black;width:300px">UPDATE</button><p>
            </div>
             
              
          </form>
        </div>
        
      </div>
      
    </div>
  </div>   
  </div>
</form:form>

</body>
</html>
 
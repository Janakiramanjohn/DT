
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Laptop</title>
</head>
<body>
<%@include file="CommonHeader.jsp" %>
<br><br><br><br>
<table cellspacing="3" align="center" width="75%" >
<tr bgcolor="blue">
<td><b><center>ProductImage</center>&nbsp;&nbsp;&nbsp;</b></td>
<td><b>ProductName </b>&nbsp;&nbsp;</td>
<td><b><center>Quantity</center></b>&nbsp;&nbsp;&nbsp;</td>
<td><b><center>SubTotal</center></b>&nbsp;&nbsp;&nbsp;</td>
<td><b><center>Operation</center></b>&nbsp;&nbsp;&nbsp;</td>
</tr>
<c:forEach items="${cartitems }" var="cartitems">
<tr>
<form action="<c:url value="/updateCartItem/${cartitems.citemid }" />" />
<td><img src="<c:url value='/resources/images/${cartitems.id}.jpg'/>" width="100" height="100">
<td>${cartitems.name }</td>
<td>${cartitems.quantity}</td>
<td>Rs.${cartitems.prize * cartitems.quantity}</td>
<td>
<!-- <input type="submit" value="PLACE ORDER" class="btn-success btn-block"/>  -->
<a href="<c:url value="/deleteCartItem/${cartitems.citemid }" />">REMOVE </a>
</td>
</tr>

</c:forEach>
<tr>

<br>
<td><a href="<c:url value="/checkout" />"> <b><h4>CheckOut</h4></b></a></td>
</tr>
</table>



<script type="text/javascript">
document.getElementById('ct').style.visibility='hidden'; // hide

</script>
</body>
</html>

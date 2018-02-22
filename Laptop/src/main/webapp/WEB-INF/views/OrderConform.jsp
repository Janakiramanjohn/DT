<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Laptop</title>
</head>
<body>
<%@include file="CommonHeader.jsp"%>
<br><br><br><br>
<table cellspacing="3" align="center" width="75%" >
<tr>
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr>
<tr bgcolor="green" style="cellpadding:10px;cellspacin:3px;" >
<td><b>Product Name</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>Quantity</b>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>SubTotal</b>&nbsp;&nbsp;&nbsp;</td>
<td><b>Image</b></td>
</tr>
<tr>

<c:forEach items="${cartitems}" var="cartitems">
<tr>
<td>${cartitems.name}</td>

<td>${cartitems.quantity }</td>
<td>${cartitems.prize * cartitems.quantity }</td>
<td><img src="<c:url value='/resources/images/${cartitems.id}.jpg'/>" width="100" height="100">
</tr>
</c:forEach>
 <tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td></td>
</tr><tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td></td>
</tr>
<tr>
<td colspan="3">Grand Total</td>
<td>${grandtotal }</td>
</tr>
</table>

<br><br><br><br><br><br>

<table cellspacing="3" cellpadding="10" align="center" >
<tr bgcolor="green">
<td colspan="2"><center><strong><h3><b>Payment Information</b></h3></strong></center></td>
</tr>

<tr>
<td><h4><b>Payment Mode</b></h4></td>
<td>
<input type="radio" name="pmode" value="CC" /><b>Credit Card</b>
<input type="radio" name="pmode" value="IB" /><b>Internet Banking</b>
<input type="radio" name="pmode" value="COD" /><b>Cash On Delivery</b>
</td>

<tr bgcolor="blue">
<td colspan="2"><center><a href="OrderComplete"><input  type="submit" value="Confirm Order" /></center></td>



</table>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>

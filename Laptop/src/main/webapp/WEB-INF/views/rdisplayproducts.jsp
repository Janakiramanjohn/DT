<!DOCTYPE html> 
<html lang="en">
<head>
<title>About</title>
<meta charset="utf-8">

<%@ page language="java" contentType="text/html"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>
 
<jsp:include page="CommonHeader.jsp"></jsp:include>

<br><br><br><br>
<div id="container">
<c:forEach items="${prolist}" var="product"> 
<div class="column">
<div class="col-sm-5 col-md-3">

<a href="productdesc/${product.id }" class="thumbnail">
<img src="<c:url value="/resources/images/${product.id }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/>
</a>
<div class="caption">
<h4>PRODUCT NAME:${product.name}</h4>

<p>Rs.${product.prize}</p>
</div>
</div>

</div>
</c:forEach>
</div>
 		<br><br><br><br><br><br><br><br><br><br>

 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

		<section style="background-color:black;color:white" id="" class="section-padding wow fadeInUp delay-05s">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center white">
            <h2 class="service-title pad-bt15">Keep in touch with us</h2>
<!--             <p class="sub-title pad-bt15">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua.</p> -->
            <hr class="bottom-line white-bg">
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="loction-info white">
              <p><i class="fa fa-map-marker fa-fw pull-left fa-2x"></i>Trunk Road<br>Porur, TN 600116</p>
              <p><i class="fa fa-envelope-o fa-fw pull-left fa-2x"></i>customercare@Laptop.com</p>
              <p><i class="fa fa-phone fa-fw pull-left fa-2x"></i>+044 5787 2323</p>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="contact-form">
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form action="" method="post" role="form" class="contactForm">
                    <div class="col-md-6 padding-right-zero">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                        </div>
                      <button type="submit" class="btn btn-success btn-submit">SEND NOW</button>
                    </div>
                </form>
              
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>
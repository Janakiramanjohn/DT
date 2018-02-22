
<!DOCTYPE html>
<html lang="en">
<head>
<title> Laptop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 0px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

p.italic {
	font-style: italic;
}
</style>
</head>
<body>

	<jsp:include page="CommonHeader.jsp"></jsp:include><br><br><br><br><br><br>
   <div class="container-fluid">
<div id="myCarousel" style="height:500px" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="./resources/images/1.png" alt="" style="width:100%; height:500px">
      </div>

      <div class="item">
        <img src="./resources/images/2.png" alt="" style="width:100%;height:500px">
      </div>
      
      
      <div class="item">
        <img src="./resources/images/6.png" alt="" style="width:100%;height:500px">
      </div>
      
      
      <div class="item">
        <img src="./resources/images/7.png" alt="" style="width:100%;height:500px">
      </div>
    
      <div class="item">
        <img src="./resources/images/3.png" alt="" style="width:100%;height:500px">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div>
 
  <div class="container-fluid">
 <div class="container">
  <h1>Today`s Exclusive Brands</h1>
  <div class="row">
    <div class="col-md-12">
      <div class="carousel slide multi-item-carousel" id="theCarousel">
        <div class="carousel-inner">
          <div  class="item active">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s1.jpeg" class="img-responsive"></a></div>
          </div>
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s3.png" class="img-responsive"></a></div>
          </div>
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s4.png" class="img-responsive"></a></div>
          </div>
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s6.png" class="img-responsive"></a></div>
          </div>
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s2.jpg" class="img-responsive"></a></div>
          </div>
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s5.jpg" class="img-responsive"></a></div>
          </div>
          <!-- add  more items here -->
          <!-- Example item start:  -->
          
          <div class="item">
            <div style="border:2px solid green;" class="col-xs-4"><a href="#1"><img src="./resources/images/s7.jpg" class="img-responsive"></a></div>
          </div>
          
          <!--  Example item end -->
        </div>
        <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
        <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
      </div>
    </div>
  </div>
</div>
 </div>		 
	<br>
	<br>
	 
	
	
	
	
	
	
	
	<script>
	
	// Instantiate the Bootstrap carousel
	$('.multi-item-carousel').carousel({
	  interval: false
	});

	// for every slide in carousel, copy the next slide's item in the slide.
	// Do the same for the next, next item.
	$('.multi-item-carousel .item').each(function(){
	  var next = $(this).next();
	  if (!next.length) {
	    next = $(this).siblings(':first');
	  }
	  next.children(':first-child').clone().appendTo($(this));
	  
	  if (next.next().length>0) {
	    next.next().children(':first-child').clone().appendTo($(this));
	  } else {
	  	$(this).siblings(':first').children(':first-child').clone().appendTo($(this));
	  }
	});
	
	</script>
	 
	<br>

	 
	<br>
	<br>
	<nav class="navbar navbar-inverse">
		<jsp:include page="commonfooter.jsp"></jsp:include>
	</nav>
</body>
</html>

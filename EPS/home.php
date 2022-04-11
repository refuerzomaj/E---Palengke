<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>E-Palengke</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<style>
	
		body {
			font: 400 15px Lato, sans-serif;
			line-height: 1.8;
			color: #818181;
		}
		h2 {
			font-size: 24px;
			text-transform: uppercase;
			color: #303030;
			font-weight: 600;
			margin-bottom: 30px;
		}
		h4 {
			font-size: 19px;
			line-height: 1.375em;
			color: #303030;
			font-weight: 400;
			margin-bottom: 30px;
		}  
		.jumbotron {
			background-color: #1e90ff;
			color: yellow;
			padding: 70px 50px;
			font-family: Montserrat, sans-serif;
		}
		  .container-fluid {
			padding: 60px 50px;
		}
		  .bg-grey {
			background-color: #f6f6f6;
		}
		.logo-small {
			color: #1e90ff;
			font-size: 50px;
		}
		.carousel-control.right, .carousel-control.left {
			background-image: none;
			color: #1e90ff;
		}
		.carousel-indicators li {
			border-color: #1e90ff;
		}
		.carousel-indicators li.active {
			background-color: yellow;
		}
		.navbar {
			margin-bottom: 0;
			background-color: #1e90ff;
			z-index: 9999;
			border: 0;
			font-size: 15px !important;
			line-height: 1.42857143 !important;
			letter-spacing: 4px;
			border-radius: 0;
			font-family: Montserrat, sans-serif;
		}
		.navbar li a, .navbar .navbar-brand {
			color: yellow !important;
		}
		.navbar-nav li a:hover, .navbar-nav li.active a {
			color: black !important;
			background-color: yellow !important;
		}
		.navbar-default .navbar-toggle {
			border-color: transparent;
			color: red !important;
		}
		footer .glyphicon {
			font-size: 20px;
			margin-bottom: 20px;
			color: #f4511e;
		}
		.slideanim {visibility:hidden;}
		.slide {
			animation-name: slide;
			-webkit-animation-name: slide;
			animation-duration: 1s;
			-webkit-animation-duration: 1s;
			visibility: visible;
		}
		@keyframes slide {
			0% {
			  opacity: 0;
			  transform: translateY(70%);
			} 
			100% {
			  opacity: 1;
			  transform: translateY(0%);
			}
		}
		@-webkit-keyframes slide {
			0% {
			  opacity: 0;
			  -webkit-transform: translateY(70%);
			} 
			100% {
			  opacity: 1;
			  -webkit-transform: translateY(0%);
			}
		}
		@media screen and (max-width: 768px) {
			.col-sm-4 {
			  text-align: center;
			  margin: 25px 0;
			}
		}
		.button {
			background-color: #1e90ff;
			border: none;
			color: yellow;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
			transition-duration: 0.4s;
		}		
		.button2:hover {
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}	
	</style>
	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>                        
			</button>
			<a class="navbar-brand" href="#myPage">E-Palengke</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
			<li><a href="#about">ABOUT</a></li>
			<li><a href="#services">SERVICES</a></li>
			<li><a href="#contact">CONTACT</a></li>
			</ul>
		</div>
	</div>
</nav>

<div class="jumbotron text-center">
	<h1>E-Palengke</h1> 
	<p style="font-size: 40px">Barangay West Rembo Makati City</p> 	
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8" style = "text-align:justify;">
		
			<h4>E-Palengke, a local digital delivery and online palengke (wet market) app for wet and dry goods, allows customers to place orders with a merchant identified as a palengke stall owner or local market partner, and have their goods delivered by a rider partner within the day.</h4>
			<br><center><a href = "index.php" style = "text-decoration: none;"><button class="button button2">Order now!</button></a></center>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
	<h2>SERVICES</h2>
	<h4>What we offer</h4>
	
	<br>
	
	<div class="row slideanim">
    <div class="col-sm-2"></div>
    <div class="col-sm-4">
		<span class="glyphicon glyphicon-heart logo-small"></span>
		<h4>LOVE</h4>
		<p>We Deliver With Care</p>
    </div>
    <div class="col-sm-4">
		<span class="glyphicon glyphicon-lock logo-small"></span>
		<h4>JOB DONE</h4>
		<p>On-the-go Riders</p>
    </div>
	</div>
	
	<br><br>
	
	<div class="row slideanim">
    <div class="col-sm-2"></div>
    <div class="col-sm-4">
		<span class="glyphicon glyphicon-certificate logo-small"></span>
		<h4>CERTIFIED</h4>
		<p>Good Quality Groceries</p>
    </div>
    <div class="col-sm-4">
		<span class="glyphicon glyphicon-home logo-small"></span>
		<h4 style="color:#303030;">COD</h4>
		<p>We Delivery To Your Home</p>
    </div>
	</div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  
	<h2>What our customers say</h2>
	<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
	
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
		<div class="item active">
			<h4>"This application is the best. I am so happy with the groceries!"<br><span>Michael Roe, Vice President, Comment Box</span></h4>
		</div>
		<div class="item">
			<h4>"One word... WOW!!"<br><span>John Doe, Salesman, Rep Inc</span></h4>
		</div>
		<div class="item">
			<h4>"Could I... BE any more happy with this application?"<br><span>Chandler Bing, Actor, FriendsAlot</span></h4>
		</div>
    </div>
	<br><br>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
    </a>
	</div>

</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
	<h2 class="text-center">CONTACT</h2><br>
	<div class="row">
	<div class="col-sm-1"></div>
    <div class="col-sm-4">
		<p>Contact us and we'll get back to you within 24 hours.</p>
		<p><span class="glyphicon glyphicon-map-marker"></span> West Rembo, Makati City</p>
		<p><span class="glyphicon glyphicon-phone"></span> +63 123456789</p>
		<p><span class="glyphicon glyphicon-envelope"></span> epalengke@gmail.com</p>
    </div>
    <div class="col-sm-6 slideanim">
		<div class="row">
			<div class="col-sm-6 form-group">
				<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
			</div>
			<div class="col-sm-6 form-group">
				<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
			</div>
		</div>
		<textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
		<div class="row">
			<div class="col-sm-12 form-group">
			  <button class="btn btn-default pull-right" type="submit">Send</button>
			</div>
		</div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
</footer>

<script>
	$(document).ready(function(){
	// Add smooth scrolling to all links in navbar + footer link
	$(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
	});
  
	$(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
	});
	})
</script>

</body>
</html>

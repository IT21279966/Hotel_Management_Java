<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Website | Home</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  
		  
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});

		  </script>
		  
		  
		<style>
			.wrap{
				display: inline-block;
				
			}
			li a{
				
				background-color:black;
			}
			#navnew{
				display: inline;
				
			}
			.box center-box{
				background-color:white;
			}
			
			ul {
			  list-style-type: none;
			  margin: 0;
			  padding: 0;
			  overflow: hidden;
			  background-color: white;
			}
		</style>
		
</head>
<body>
		<!---start-Wrap--->
			<!---start-header--->
			<div class="header">
				<div class="wrap">
					<div class="header-top">
						<div class="logo">
							<a href="index.html"><img src="images/logo2.png" title="logo" /></a>
						</div>
						<div class="contact-info">
							<p class="phone">Call us : <a href="#">011 2175247</a></p>
							<p class="gpa">Gpa : <a href="https://www.google.com/maps/place/Galadari+Hotel/@6.9316682,79.8408383,17z/data=!3m1!4b1!4m9!3m8!1s0x3ae259251b57a431:0x8f44e226d6d20a7e!5m2!4m1!1i2!8m2!3d6.9316682!4d79.843027!16s%2Fg%2F1tjtgpyl">View map</a></p>
							<!--<p class="code">BROUGHT TO YOU BY:<a href="https:www.code-projects.org">CODE-PROJECTS</a></p>-->
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<div class="header-top-nav">
					<div class="wrap" id="navnew">
						<ul>
							<li class="active"><a href="index.html">Home</a></li>

							<li><a href="#">Payment</a></li>
							<li><a href="#">Rooms</a></li>
							<li><a href="#">Contact US</a></li>
							<li><a href="about.html">About US</a></li>
							<li><a href="help&sup.jsp">Help & Support</a></li>
						<!--	<li><a href="services.html">Services</a></li>  -->
							<li><a href="gallery.html">Gallery</a></li>
						<!--	<li><a href="contact.html">Contact</a></li>-->
							<div class="clear"> </div>
						</ul>
					</div>
				</div>
			</div>
			<!---End-header--->
			<div class="clear"> </div>
			<!--start-image-slider---->
					<div class="image-slider">
						<!-- Slideshow 1 -->
						    <ul class="rslides" id="slider1">
						      <li><img src="images/slider3.jpg" alt=""></li>
						      <li><img src="images/slider1.jpg" alt=""></li>
						      <li><img src="images/slider3.jpg" alt=""></li>
						    </ul>
						 <!-- Slideshow 2 -->
					</div>
					<!--End-image-slider---->
			<!---start-content----->
			<div class="content">
				<div class="quit">
					<p><span class="start">Come, </span> Stay & <span class="end">Enjoy .</span></p>
				</div>
					<div class="content-grids">
						<div class="wrap">
						<div class="content-grid">
							<div class="content-grid-pic">
								<a href="#"><img src="images/icon1.png" title="image-name" /></a>
							</div>
							<div class="content-grid-info">
								<h3>Best food Ever</h3>
								<p>"Get your fav menues"</p>
								<a href="#">Read More</a>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="content-grid">
							<div class="content-grid-pic">
								<a href="#"><img src="images/icon2.png" title="image-name" /></a>
							</div>
							<div class="content-grid-info">
								<h3>24x7 phone support</h3>
								<p>"Contact"</p>
								<a href="#">Read More</a>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="content-grid">
							<div class="content-grid-pic">
								<a href="#"><img src="images/iocn3.png" title="image-name" /></a>
							</div>
							<div class="content-grid-info">
								<h3>Best Room Services</h3>
								<p>"Don't Worry we are here"</p>
								<a href="#">Read More</a>
							</div>
							<div class="clear"> </div>
						</div>
						
						<div class="clear"> </div>
					</div>
				</div>
				<div class="clear"> </div>
				<div class="content-box">
					<div class="wrap">
					<div class="content-box-left">
						<div class="content-box-left-topgrid">
							<h3>welcome to our Hotel</h3>
							<p> ' Feel Like Home :)</p>
							<p> Hotel's Description</p>
							<span>For more information about our Hotel, Call 980XXXXXXX</span>
						</div>
						<div class="content-box-left-bootomgrids">
							<div class="content-box-left-bootomgrid">
								<h3>Deluxe Rooms</h3>
								<p> Your description about deluxe rooms</p>
								<a href="#"><img src="images/slider1.jpg" title="image-name" /></a>
							</div>
							<div class="content-box-left-bootomgrid">
								<h3>Luxury Rooms</h3>
								<p>Your description about Luxury rooms</p>
								<a href="#"><img src="images/slider2.jpg" title="image-name" /></a>
							</div>
							<div class="content-box-left-bootomgrid lastgrid">
								<h3>Executive Rooms</h3>
								<p>Your description about Executive rooms</p>
								<a href="#"><img src="images/slider3.jpg" title="image-name" /></a>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="content-box-right">
						<div class="content-box-right-topgrid">
							<h3>To days Specials</h3>
							<a href="#"><img src="images/slider1.jpg" title="imnage-name" /></a>
							<h4>Super Discount Offer</h4>
							<p>"DESCRIPTION"</p>
							<a href="#">Read More</a>
						</div>
						<div class="content-box-right-bottomgrid">
							
						</div>
					</div>
					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
				<div class="boxs">
				<div class="wrap">
				<div class="box">
			
				</div>
				<div class="clear"> </div>
			</div>
			<!---start-box---->
		</div>


			</div>
			<!---End-content----->
		</div>
		<!---End-Wrap--->
</body>
</html>
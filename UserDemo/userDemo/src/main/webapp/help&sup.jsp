<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Help & Support</title>
		
		<!-- ******************************CSS*********************************** -->
		<style>
		
		body{
			background-color: #DFF95F;
		}
		
		h2{
			text-align: center;
		}
		.accordion {
		  background-color: #ADD8E6;
		  color: #444;
		  cursor: pointer;
		  padding: 18px;
		  width: 100%;
		  border: none;
		  text-align: left;
		  outline: none;
		  font-size: 20px;
		  transition: 0.4s;
		}
		
		.active, .accordion:hover {
		  background-color: #ccc;
		}
		
		.accordion:after {
		  content: '\002B';
		  color: #777;
		  font-weight: bold;
		  float: right;
		  margin-left: 5px;
		}
		
		.active:after {
		  content: "\2212";
		}
		
		.panel {
		  padding: 0 18px;
		  background-color: white;
		  max-height: 0;
		  overflow: hidden;
		  transition: max-height 0.2s ease-out;
		}
		
		li {
		  display: inline;
		  float: left;
		}
		

		
		a {
		  display: block;
		  padding: 8px;
		  background-color: #dddddd;
		}
		


		
		</style>
	
	</head>
	
	<body>
	
		<div class="header-top-nav">
			<div class="wrap" id="navnew">
				<ul>
					<li class="active"><a href="Home_afterlog.jsp">Home</a></li>

					<li><a href="#">Payment</a></li>
					<li><a href="#">Rooms</a></li>
					<li><a href="#">Contact US</a></li>
					<li><a href="about.html">About US</a></li>
					<li><a href="help&sup.jsp">Help & Support</a></li>
						<!--	<li><a href="services.html">Services</a></li>  -->
					<li><a href="gallery.html">Gallery</a></li>
					
					<!--	<li><a href="contact.html">Contact</a></li> -->
					
				</ul>
			</div>
		</div>
		<br>
	
		<h2>Frequently Asked Questions</h2>
		
		<button class="accordion">Is this website secure with viruses and malware?</button>
		
		<div class="panel">
		  <p>This website is a secure website.</p>
		</div>
	
		<button class="accordion">How can I change my password ?</button>
		
		<div class="panel">	  
		  <p>
		  	Step 1: Select "Forgot Password?" on Sign-in page.<br>
		  	Step 2: Sign-in to your google account.<br>
		  	Step 3: Enter & Conform your new password<br>
		  </p>
		</div>
	
		<button class="accordion">How can I believe the information is true?</button>
		<div class="panel">
		  <p>We have been providing the service for 5 years and provided service over 1000+ clients. We guarantee you can trust us.</p>
		</div>
		
		
		<!-- ************************************** JS **************************************** -->
		
		<script>
			var acc = document.getElementsByClassName("accordion");
			var i;
			
			for (i = 0; i < acc.length; i++) {
			  acc[i].addEventListener("click", function() {
			    this.classList.toggle("active");
			    var panel = this.nextElementSibling;
			    
			    if (panel.style.maxHeight) {
			      panel.style.maxHeight = null;
			    } else {
			      panel.style.maxHeight = panel.scrollHeight + "px";
			    } 
			  });
			}
		</script>
	
		<br><hr><br>
		
		
		
		<h3>Fill form if you have any inquiries</h3>
		
		<form action="helpsup" method= "post">
			Enter UserID <input type="text" name = "userid" required><br>
			Enter Name <input type="text" name = "name" required><br>
			Enter Email <input type="text" name = "email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required><br><br>
			Your Inquiry <input type ="text" name ="inquiry" maxlength="200" size="200" required><br>
			
	
			<input type="submit" name="submit" value="Submit">
		</form>

		
	</body>
</html>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html lang="en">
<head>
<title> Vcriate Smart Bank</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>


<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/circles.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />



<link href="//fonts.googleapis.com/css?family=Cabin:400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">





<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>
<body>
<%

response.setHeader("Pragma","no-cache");

response.setHeader("Cache-Control","no-store");

response.setHeader("Expires","0");

response.setDateHeader("Expires",-1);



%>
<input type="hidden" id="status"  value="<%= request.getAttribute("status") %>">

<div class="banner" id="home">
<div class="agileinfo-dot">
   <div class="header">
		   <div class="header-main">
			 <div class="header-top-agileits">
		   	 <div class="container">
				<ul class="agile_forms" data-aos="fade-left">
					<li><a class="active" href="#" data-toggle="modal" data-target="#myModal2"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a> </li>
					<li><a href="#" data-toggle="modal" data-target="#myModal3"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Register</a> </li>
				</ul>
				<div class="clearfix"> </div>
				</div>
			</div>
		   	<div class="container">
			<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.html">VC Bank</a></h1>
					</div>
					
					<div class="collapse navbar-collapse cl-effect-13" id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.html" class="active scroll">Home</a></li>
							<li><a href="#services" class="scroll">About</a></li>
							<li><a href="#contact" class="scroll">Contact</a></li>
						</ul>

					</div>

					<div class="w3ls_search">
							<div class="cd-main-header">
								<ul class="cd-header-buttons">
									<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
								</ul> 
							</div>
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Click enter after typing">
								</form>
							</div>
					</div>
					

				<div class="clearfix"> </div>	
			</nav>
	</div>
</div>
		   
		   
		   
		   
<div class="container">
		   <div class="banner-bottom">
		   	   <section class="slider">
				 <div class="flexslider">
					<ul class="slides">
					  <li>
					  	<div class="banner-bottom-text">
					  			<h3>Get around the clock support from payroll experts</h3>
						  
					 	</div>
					  </li>
					  <li>
					  	<div class="banner-bottom-text">
					  		<h3>Up to 4%* interest per annum</h3>
					 	</div>
					  </li>
					  <li>
					  	<div class="banner-bottom-text">
					  			<h3>Lifetime Free Credit Card</h3>
						  
					 	</div>
					  </li>
					  <li>
					  	<div class="banner-bottom-text">
					  		<h3>Get a Virtual Debit Card instantly</h3>
					 	</div>
					  </li>			  
				    </ul>
				 </div>
				 <div class="clearfix"> </div>
		      </section>
			<div class="thim-click-to-bottom">
				<a href="#about" class="scroll">
					<i class="fa fa-chevron-down" aria-hidden="true"></i>
				</a>
			</div>
			
		   </div>
		</div>
	</div>
</div>
</div>




<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
	<div class="modal-dialog">
													
														<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	
																	<div class="signin-form profile">
																	<h3 class="agileinfo_sign">Login</h3>	
																			<div class="login-form">
																				<form action="loginserv" method="post">
																					<input type="text" name="CRN" placeholder="CRN" required="">
																					<input type="password" name="password" placeholder="Password" required="">
																					<div class="tp">
																						<input type="submit" value="Login">
																					</div>
																				</form>
																			</div>
																			<p><a href="#" data-toggle="modal" data-target="#myModal3" > Don't have an account?</a></p>
																		</div>
																</div>
															</div>
														</div>
													</div>
													
													
													
													
													
													
													
		</div>
</div>
													

<div class="services-agileits" id="services">
	<div class="container">
	<div class="tittle-agileinfo">
		<h3>Accounting Services</h3>
		<p >Accounting Services provided by our bank</p>
	</div>
		<div class="services-agileits-w3layouts">
		<div class="col-md-3 service-grids">
			<i class="fa fa-bookmark-o" aria-hidden="true" data-aos="zoom-in"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Standard Bookkeeping</h4>
		</div>
		<div class="col-md-3 service-grids">
			<i class="fa fa-line-chart" aria-hidden="true" data-aos="zoom-out"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Taxes Optimization</h4>
		</div>
		<div class="col-md-3 service-grids">
			<i class="fa fa-money" aria-hidden="true" data-aos="zoom-in"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>SMB Accountants</h4>
		</div>
		<div class="col-md-3 service-grids">
			<i class="fa fa-pencil-square-o" aria-hidden="true" data-aos="zoom-out"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Any Accounting</h4>
		</div>
		<div class="col-md-3 service-grids">
			<i class="fa fa-handshake-o" aria-hidden="true"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Helping Businesses</h4>
		</div>
		<div class="col-md-3 service-grids">
			<i class="fa fa-area-chart" aria-hidden="true" data-aos="zoom-in"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Auditing & Individual</h4>
		</div>
		<div class="col-md-3 service-grids" >
			<i class="fa fa-users" aria-hidden="true" data-aos="zoom-out"></i>
			<p class="para-agileits-w3layouts"></p>
			<h4>Seasoned Team</h4>
		</div>
		<img src="images/services1.png" class="img-responsive" data-aos="slide-up" alt=""/>
		<div class="clearfix"> </div>	
		</div>
	</div>
</div>




<div class="gallery" id="gallery">
	<div class="container">
	<div class="tittle-agileinfo">
		<h3>Sites</h3>
		
	</div>
	</div>
	 <div class="w3layouts-grids gal-wthree-agileits">
			<div id="jzBox" class="jzBox">
				<div id="jzBoxNextBig"></div>
				<div id="jzBoxPrevBig"></div>
				<img src="#" id="jzBoxTargetImg" alt=""/>
				<div id="jzBoxBottom">
					<div id="jzBoxTitle"></div>
					<div id="jzBoxMoreItems">
						<div id="jzBoxCounter"></div>
						<i class="arrow-left" id="jzBoxPrev"></i> 
						<i class="arrow-right" id="jzBoxNext"></i> 
					</div>
					<i class="close" id="jzBoxClose"></i>
				</div>
			</div>
			<div class="gallery-grids-row">
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g1.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g1.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    		
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g2.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g2.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    			
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g3.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g3.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    			
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g4.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g4.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    			
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g5.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g5.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    		
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g6.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g6.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    		
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g7.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g7.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    			
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">  
						<a href="images/g8.jpg" class="jzBoxLink item-hover" title="financial Business">  
							<img src="images/g8.jpg" alt=" " class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div> 
						</a>    		
					</div>
				</div>  
				
				<div class="clearfix"> </div>
			</div>
			</div>
</div>





<div class="agileits_w3layouts newsletter">
	<div class="container">
		<div class="col-md-6 news-left" data-aos="fade-up">
			<h3 class="f-w3ls">Follow us on</h3>
			<div class="follow-left-agileits">
			
			</div>
			<div class="follow-right-agileinfo">
				<ul>
					<li><a href="https://www.linkedin.com/in/chetas-raulkar-01a4731ba/"><i class="fa fa-linkedin" aria-hidden="true"></i><span>Linkedin</span></a></li>
					<li><a href="mailto:chetasraulkar774@gmail.com"><i class="fa fa-google-plus" aria-hidden="true"></i><span>Google</span></a></li>
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i><span>Facebook</span></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a></li>
					
					
				</ul>
			</div>
		</div>
		<div class="col-md-6 news-right" data-aos="fade-up">
		<h3>Subscribe Now</h3>
		<p>Get Connect with us!</p>
			<form action="#" method="post">
				<input class="email" type="email" name="Email" placeholder="Email" required="">
				<input type="submit" value="Submit">
			</form>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>




<div class="map">
		<ul class="faq">
			<li class="item1"><a href="#">Location<span class="glyphicon glyphicon-menu-down"></span></a>
				<ul>
					<li class="subitem1">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7442.506531808461!2d79.1062561741722!3d21.14231694374775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c74aa350f41f%3A0xe7163602fa5fc21!2sMahal%2C%20Nagpur%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1665668605612!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
					</li>										
				</ul>
			</li>
		</ul>
</div>




<div class="contact" id="contact">
		<div class="container">
		<div class="tittle-agileinfo">
			<h3>Contact Info</h3>
			<p >Connect with us</p>
		</div>
			<div class="agile-contact-grids">
					<div class="col-md-6 address-grid" data-aos="flip-left">
						<h4>Our Address</h4>
						<ul class="w3_address">
							<li><span>Address 1</span>Solapur , India</li>
							<li><span>Phone</span>+91 88888 79839</li>

							<li><span>Email</span><a href="mailto:info@example.com">chetasraulkar774@gmail.com</a></li>
						</ul>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 contact-form" data-aos="flip-up">
						<h4>Contact Form</h4>
						<form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" placeholder="" required="">
								<label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" placeholder="" required=""> 
								<label>Email</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="text" name="Subject" placeholder="" required="">
								<label>Subject</label>
								<span></span>
							</div>
							<div class="styled-input">
								<textarea name="Message" placeholder="" required=""></textarea>
								<label>Message</label>
								<span></span>
							</div>	 
							<input type="submit" value="SEND">
						</form>
					</div>
				<div class="clearfix"> </div>
			</div>
		</div>
</div>


<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<script src="js/main.js"></script>	

<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
					$(function(){				 
					});
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
</script>




<script src="js/slideshow.min.js"></script>
<script src="js/launcher.js"></script>



<script type="text/javascript" src="js/circles.js"></script>




<script>
								var colors = [
										['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'],['#ffffff', '#53d769'], ['#ffffff', '#147efb']
									];
								for (var i = 1; i <= 7; i++) {
									var child = document.getElementById('circles-' + i),
										percentage = 30 + (i * 10);
										
									Circles.create({
										id:         child.id,
										percentage: percentage,
										radius:     80,
										width:      10,
										number:   	percentage / 1,
										text:       '%',
										colors:     colors[i - 1]
									});
								}
						
</script>

<script type="text/javascript">
			$(function() {
			
				var menu_ul = $('.faq > li > ul'),
					   menu_a  = $('.faq > li > a');
				
				menu_ul.hide();
			
				menu_a.click(function(e) {
					e.preventDefault();
					if(!$(this).hasClass('active')) {
						menu_a.removeClass('active');
						menu_ul.filter(':visible').slideUp('normal');
						$(this).addClass('active').next().stop(true,true).slideDown('normal');
					} else {
						$(this).removeClass('active');
						$(this).next().stop(true,true).slideUp('normal');
					}
				});
			
			});
</script>



<script src="js/jzBox.js"></script>



<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>



<script type="text/javascript">
		$(document).ready(function() {								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>

<script src='js/aos.js'></script>
<script src="js/aosindex.js"></script>

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/bootstrap.js"></script>





<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status=="failed"){
    	swal("Sorry","Invalid Credentials","error");
    }
    else if(status=="InvalidUserId"){
    	swal("Sorry","User Id can't be empty","error");
    }
    else if(status=="InvalidPassword"){
    	swal("Sorry","Password can't be empty","error");
    }
    else if(status=="resetSuccess"){
    	swal("Done","Password Upadate Successfully","success");
    }
    else if(status==""){
    	swal("Sorry!","Password Updatation Failed","error");
    }
    </script>
    
    <script>
    
    function validate() {
        if (document.Registration.confirmPassword.value != document.Registration.password.value) {
        	
            Swal.fire({
                icon: 'error',
                title: 'Required',
                text: 'Password and confirmation password should be matched.',
            })
            document.Registration.confirmPassword.focus();
            return false;
        }
        return (true);
    }
    
    
    </script>

</body>
</html>
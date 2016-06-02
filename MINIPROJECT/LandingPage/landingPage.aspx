<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landingPage.aspx.cs" Inherits="MINIPROJECT.LandingPage.landingPage" %>


<!DOCTYPE html>
 <html class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgbahsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms svgclippaths gr_freehtml5_co">

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>E - campus (UTM)</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">

	<!-- Styleswitcher  -->
	<link rel="stylesheet" id="theme-switch" href="css/style.css">

	<style>
	#colour-variations 
	{
		padding: 10px;
		-webkit-transition: 0.5s;
	  	-o-transition: 0.5s;
		-moz-transition: 0.5s;
		width: 140px;
		position: fixed;
		left: 0;
		top: 100px;
		z-index: 999999;
		background: #fff;
		/*border-radius: 4px;*/
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	#colour-variations.sleep 
	{
		margin-left: -140px;
	}
	#colour-variations h3 {
		text-align: center;
		font-size: 11px;
		letter-spacing: 2px;
		text-transform: uppercase;
		color: #777;
		margin: 0 0 10px 0;
		padding: 0;
	}
	#colour-variations ul,
	#colour-variations ul li 
	{
		padding: 0;
		margin: 0;
	}
	#colour-variations li 
	{
		list-style: none;
		display: inline;
	}
	#colour-variations li a 
	{
		width: 20px;
		height: 20px;
		position: relative;
		float: left;
		margin: 5px;
	}
	#colour-variations li a[data-theme="style"] 
	{
		background: #6173f4;
	}
	#colour-variations li a[data-theme="pink"] 
	{
		background: #ff69b4;
	}
	#colour-variations li a[data-theme="blue"] 
	{
		background: #2185d5;
	}
	#colour-variations li a[data-theme="turquoise"] 
	{
		background: #00b8a9;
	}
	#colour-variations li a[data-theme="orange"] 
	{
		background: #ff6600;
	}
	#colour-variations li a[data-theme="lightblue"] 
	{
		background: #5585b5;
	}
	#colour-variations li a[data-theme="brown"] 
	{
		background: #a03232;
	}
	#colour-variations li a[data-theme="green"] 
	{
		background: #65d269;
	}
	.option-toggle 
	{
		position: absolute;
		right: 0;
		top: 0;
		margin-top: 5px;
		margin-right: -30px;
		width: 30px;
		height: 30px;
		background: #f64662;
		text-align: center;
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		color: #fff;
		cursor: pointer;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	.option-toggle i 
	{
		top: 2px;
		position: relative;
	}
	.option-toggle:hover, .option-toggle:focus, .option-toggle:active 
	{
		color:  #fff;
		text-decoration: none;
		outline: none;
	}
	</style>

	<script type="text/javascript">
		function show()
		{
			$('#login').modal('show');
		}
	</script>

	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	</head>
	<body>
	<header role="banner" id="fh5co-header">
			<div class="container">
				<!-- <div class="row"> -->
			    <nav class="navbar navbar-default">
		        <div class="navbar-header">
		        	<!-- Mobile Toggle Menu Button -->
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
					<a class="navbar-brand" href="index.html">E - Campus Management System</a> 
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="#" data-nav-section="home"><span>Home</span></a></li>
		            <li><a href="#" data-nav-section="about"><span>About</span></a></li>
					<li><a href="#" data-nav-section="research"><span>Research</span></a></li>
					<li><a href="#" data-nav-section="admission"><span>Admission</span></a></li>
		            <li><a href="#" data-nav-section="testimonials"><span>Testimonials</span></a></li>
		            <li><a href="#" data-nav-section="pricing"><span>Pricing</span></a></li>
		            <li><a href="#" data-nav-section="press"><span>Press</span></a></li>
                    <li><a href="login.aspx"><span>Login</span></a></li>

		          </ul>
		        </div>
			    </nav>
			  <!-- </div> -->
		  </div>
	</header>
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Login</h4>
				</div>						
				<form data-toggle="validator" role="form" method="post" runat="server">	
					<div class="modal-body modal-bg">
						<div class="form-group">
							<label for="username" class="control-label">Username</label>
							<asp:TextBox CssClass="form-control" id="userName"  placeholder="Matric No" runat="server"> </asp:TextBox>
							<asp:RequiredFieldValidator runat="server" id="reqUserName" controltovalidate="userName" errormessage="Username cannot be blank" ForeColor="Red">*Warning!!!</asp:RequiredFieldValidator>
							<div class="help-block with-errors"></div>				
							<label for="userPassword" class="control-label">Password</label>			
							<asp:TextBox CssClass="form-control" id="userPassword"  placeholder="Password" runat="server" TextMode="Password"> </asp:TextBox>
							<asp:RequiredFieldValidator runat="server" id="reqPassword" controltovalidate="userPassword" errormessage="Password cannot be blank" ForeColor="Red">*Warning!!!</asp:RequiredFieldValidator>								
							<asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "userPassword" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{4,}$" runat="server" ErrorMessage="Minimum 4 characters required."></asp:RegularExpressionValidator>					
						</div>                        
						<asp:Label ID="Label1" runat="server"/>   
						<% if (Label1.Text == "Authentication Failed")
							{%>
							   <script>
							   $('#login').modal('show');
							   </script> 
							  <div class="alert alert-danger alert-dismissible" role="alert">
								 <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								 <strong>Error! Username or password is incorrect</strong> 
							   </div>	   
						   <%  userName.Text = string.Empty;
							   userPassword.Text = string.Empty;
							 } %>                 
					</div>         
					<div class="modal-footer">
						<div style="float:left;">
							<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-times"> Cancel</i></button>
						</div>        
						<a class="btn btn-success" href="/register.aspx" role="button"><i class="icon-sign-in"> Sign Up</i></a>
						<button id="Button1" class="btn btn-primary" runat="server" onserverclick="Button1_Click"><i class ="icon-star-half-empty"></i> Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>				
	<div id="slider" data-section="home">
		<div class="owl-carousel owl-carousel-fullwidth">
			<!-- background color -->
		    <div class="item" style="background: #352f44;">
		    	<div class="container" style="position: relative;">
		    		<div class="row">
					    <div class="col-md-7 col-sm-7">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
									<h1 class="fh5co-lead to-animate">INNOVATIVE</h1>
									<h2 class="fh5co-sub-lead to-animate"> Innovative is having new ideas about how something can be done or  introducing or using new ideas or methods </h2>
									<p class="to-animate-2"><a href="http://www.merriam-webster.com/dictionary/innovative" class="btn btn-primary btn-lg">View Definition</a></p>
						    	</div>
						    </div>
					    </div>
					    <div class="col-md-4 col-md-push-1 col-sm-4 col-sm-push-1 iphone-image">
							<div class="iphone to-animate-2"><img src="images/logoutm.gif" alt="Free HTML5 Template by FREEHTML5.co" height="400" width="400"></div>
					    </div>

		    		</div>
		    	</div>
		    </div>
			<!-- background color -->
			<div class="item" style="background: #464646;">
		    	<div class="container" style="position: relative;">
		    		<div class="row">
		    			<div class="col-md-7 col-md-push-1 col-md-push-5 col-sm-7 col-sm-push-1 col-sm-push-5">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
									<h1 class="fh5co-lead to-animate">ENTREPRENEURIAL</h1>
									<h2 class="fh5co-sub-lead to-animate"> Entrepreneurial is used to describe someone who makes money by starting their own business, especially when this involves seeing a new opportunity and taking risks </h2>
									<p class="to-animate-2"><a href="http://dictionary.cambridge.org/dictionary/english/entrepreneurial" class="btn btn-primary btn-lg">View Definition</a></p>
						    	</div>
						    </div>
					    </div>
					    <div class="col-md-4 col-md-pull-7 col-sm-4 col-sm-pull-7 iphone-image">
							<div class="iphone to-animate-2"><img src="images/steve-job.jpg" alt="Free HTML5 Template by FREEHTML5.co" height="400" width="400"></div>
					    </div>

		    		</div>
		    	</div>
		    </div>
			<div class="item" style="background-image:url(images/utm-masjid.jpg)">
		    	<div class="overlay"></div>
		    	<div class="container" style="position: relative;">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2 text-center">
		    				<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text">
									<h1 class="fh5co-lead to-animate">GLOBAL</h1>
									<h2 class="fh5co-sub-lead to-animate"> Global is pertaining to the whole world, worldwide or universal </h2>
									<p class="to-animate-2"><a href="http://www.utm.my/" target="_blank" class="btn btn-primary btn-lg">View Official Website</a></p>
								</div>
							</div>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>
	<div id="fh5co-about-us" data-section="about">
		<div class="container">
			<div class="row row-bottom-padded-lg" id="about-us">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">About UTM</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 to-animate">
							<h3> Quiet stars and the still of expectation. The eucalyptus branches heavy with evening dew, their feet shuffling woodchips, braiding eights in the silver grass, and edging hillocks from the first mulch of fall. </h3>
							<h3> —Will Chancellor, A Brave Man Seven Storeys Tall </h3>
						</div>
					</div>
				</div>
				<div class="col-md-8 to-animate">
					<img src="images/balai-cerapan.png" class="img-responsive img-rounded" alt="Free HTML5 Template">
				</div>
				<div class="col-md-4 to-animate">
					<h2>Introduction</h2>
					<p>Universiti Teknologi Malaysia (UTM), an innovation-led and graduate-focused Research University. It is located both in Kuala Lumpur, the capital city of Malaysia and Johor Bahru, the southern city in Iskandar Malaysia, which is a vibrant economic corridor in the south of Peninsular Malaysia.</p>
					&nbsp;
					<h2> Philosophy </h2>
					<p> The divine law of Allah is the foundation for science and technology. UTM strives with total and unified effort to attain excellence in science and technology for universal peace and prosperity in accordance with His will. </p>				
					<p><a href="#team" class="btn btn-primary">Meet the team</a></p>
				</div>
			</div>
			<div class="row" id="team">
				<div class="col-md-12 section-heading text-center to-animate">
					<h2>Team</h2>
				</div>
				<div class="col-md-12">
					<div class="row row-bottom-padded-lg">
						<div class="col-md-4 text-center to-animate">
							<div class="person">
								<img src="images/amier.jpg" class="img-responsive img-rounded" alt="Person">
								<h3 class="name">Amier Musstaqim</h3>
								<div class="position">Web Developer</div>
								<p>"The programmers of tomorrow are the wizards of the future. You're going to look like you have magic powers compared to everybody else"</p>
								<ul class="social social-circle">
									<li><a href="https://www.facebook.com/amier.musstaqim"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.instagram.com/amier164/"><i class="icon-instagram"></i></a></li>
									<li><a href="https://github.com/amier164"><i class="icon-github"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 text-center to-animate">
							<div class="person">
								<img src="images/dzul.jpg" class="img-responsive img-rounded" alt="Person">
								<h3 class="name">Dzul Farizan</h3>
								<div class="position">Back - End Developer</div>
								<p>"The season of failure is the best time for sowing the seeds of success"</p>
								<ul class="social social-circle">
									<li><a href="https://www.facebook.com/dzul.tumiran"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.instagram.com/ejulfae/"><i class="icon-instagram"></i></a></li>
									<li><a href="https://github.com/ejulfaey"><i class="icon-github"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 text-center to-animate">
							<div class="person">
								<img src="images/lyana.jpg" class="img-responsive img-rounded" alt="Person">
								<h3 class="name">Lyana</h3>
								<div class="position">Front - End Developer</div>
								<p>"If you can't fly then run, if you can't run then walk, if you can't walk then crawl, but whatever you do you have to keep moving forward."</p>
								<ul class="social social-circle">
									<li><a href="https://www.facebook.com/appleblssom"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.instagram.com/ynyzd/"><i class="icon-instagram"></i></a></li>
									<li><a href="https://github.com/Lyana2"><i class="icon-github"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 text-center to-animate"> </div>
						<div class="col-md-4 text-center to-animate">
							<div class="person">
								<img src="images/aidan.jpg" class="img-responsive img-rounded" alt="Person">
								<h3 class="name">Aidan Toh</h3>
								<div class="position">System Analyst</div>
								<p>"Have the courage to follow your heart and intuition. They somehow know what you truly want to become."</p>
								<ul class="social social-circle">
									<li><a href="https://www.facebook.com/aidan.toh"><i class="icon-facebook"></i></a></li>
									<li><a href="https://www.instagram.com/aidantoh/"><i class="icon-instagram"></i></a></li>
									<li><a href="https://github.com/Aidan1"><i class="icon-github"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-our-services" data-section="research">
		<div class="container">
			<div class="row row-bottom-padded-sm">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Our Research</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 to-animate">
							<h3>In UTM, we believe in high impact research and innovation which is why our research entities, policies and strategies were frequently revised on ensure that they are supporting the national and global agenda.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box to-animate">
						<a href="https://pure.utm.my/" target="_blank"><div class="icon colored-1"><span><i class="icon-folder-open"></i></span></div></a>
						<h3>Research Experts Directory</h3>
						<p>UTM Experts Directory which is a searchable database of the research interests of UTM academic staff.</p> 
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
					<div class="box to-animate">
						<a href="http://www.utm.my/research/research-structure/centres-of-excellence/" target="_blank"><div class="icon colored-4"><span><i class="icon-cloud"></i></span></div></a>
						<h3>Research Centres and Institutes</h3>
						<p>A number of Centres of Excellence were established to gather expertise from various faculties and background to work on the core business defined in the particular Centre of Excellence</p>
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box to-animate">
						<a href="http://eprints.utm.my/view/subjects/" target="_blank"><div class="icon colored-2"><span><i class="icon-file"></i></span></div></a>
						<h3>Research Publications</h3>
						<p>A digital collection of the University's intellectual or research output. Institutional repositories centralize, collect, preserve, and comply to open access concept of accessing collection of scholarly materials that showcases the research output of Universiti Teknologi Malaysia communities.</p>
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
					<div class="box to-animate">
						<a href="http://rmc.utm.my/" target="_blank"><div class="icon colored-5"><span><i class="icon-group"></i></span></div></a>
						<h3>Research Management Centre (RMC)</h3>
						<p>RMC is committed continuously to enhance the Research and Development (R&D) management service quality with the purpose of attaining customers’ satisfaction</p>
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box to-animate">
						<a href="http://ent.library.utm.my/" target="_blank"><div class="icon colored-3"><span><i class="icon-book"></i></span></div></a>
						<h3>Library</h3>
						<p>This is the specific search engine for UTM library (Library Electronic System & Research Information)</p>
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
					<div class="box to-animate">
						<a href="http://www.utm.my/faculties-schools/" target="_blank"><div class="icon colored-6"><span><i class="icon-building"></i></span></div></a>
						<h3>Faculties And Schools</h3>
						<p>The list of faculties and schools in Universiti Teknologi Malaysia</p>
						<p style="font-style:oblique;">Click on the icon for further details.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="fh5co-features" data-section="admission">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="single-animate animate-features-1">Admission to UTM</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 single-animate animate-features-2">
							<h3>There are two types of admission which are undergraduate and postgraduate. Each type of admission has two categories which are local student and international student.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-bottom-padded-sm">
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-star"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.utm.my/admission/" target="_blank"><h3>Undergraduate</h3></a>
						<p>All of the details for bachelor degree programmes in UTM is provided.</p>
					</div>	
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-leaf"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.utm.my/admission/" target="_blank"><h3>Postgraduate</h3></a>
						<p>All of the details for master or PhD programmes in UTM is provided.</p>
					</div>
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-globe"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.utm.my/admission/continuing-education-admission/" target="_blank"><h3>Continuing Education</h3></a>
						<p>A learning centre for the working community who are interested in furthering their education, either on a part time basis or full time basis</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-speedometer"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.utm.my/admission/" target="_blank"><h3>Executive & Professional Programmes Admission</h3></a>
						<p>The professional programmes to cultivate the talent in the field of technology and engineering.</p>
					</div>	
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-flag"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.ppd.utmspace.edu.my/" target="_blank"><h3>Diploma Programmes</h3></a>
						<p>To produce trained semi-professionals who are skilled and knowledgeable in various focus area ranging from engineering, built environment, computer science and management technology</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 fh5co-service to-animate">
					<div class="fh5co-icon"><i class="icon-cog"></i></div>
					<div class="fh5co-desc">
						<a href="http://www.utm.my/admission/frequently-asked-question-faq/" target="_blank"><h3>Frequently Asked Question</h3></a>
						<p>Several frequently asked questions about UTM in general are provided for references purpose.</p>
					</div>
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4 single-animate animate-features-3">
					<a href="http://www.utm.my/admission/" class="btn btn-primary btn-block">Further Detail</a>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-testimonials" data-section="testimonials">		
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Testimonials</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>We produce leaders, thinkers, entrepreneur and experts in technology and engineering fields.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo;I am very proud to say that I was given an opportunity by UTM to participate in a student exchange program to Japan for a semester.&rdquo;</p>
						</blockquote>
						<p class="author">Mohd Syahlan bin Mohd Syukri <span class="subtext">Bachelors of Engineering (Chemical)</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo; UTM given me chances to organise a big event namely, Planning Student’s Assembly (PSA) among IPTA’s as well as improving my leadership skills through PEWIBAWA (Persatuan Mahasiswa Perancangan Bandar dan Wilayah, UTM).&rdquo;</p>
						</blockquote>
						<p class="author">Adilah Jamaluddin <span class="subtext">Bachelors of Urban and Regional Planning</span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony to-animate">
						<blockquote>
							<span class="quote"><span><i class="icon-quote-left"></i></span></span>
							<p>&ldquo;I had the opportunity to lead a student group on promoting biodiesel in Malaysia and other Asian countries such as Thailand, Vietnam, Cambodia, Laos and China.&rdquo;</p>
						</blockquote>
						<p class="author">Nurulsurusiah binti Mohamad <span class="subtext">Bachelors of Engineering (Chemical)</span></p>
	</div>

				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-press" data-section="international">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="single-animate animate-press-1">International</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext single-animate animate-press-2">
							<h3>UTM has long participated in a wide variety of collaborative relationships with universities, other institutions and individuals in many countries to provides exposure to new ideas and new perspectives.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<!-- Press Item -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/utm-isc.jpg)">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title"> UTM International Student Centre <span class="fh5co-border"></span></h3>
							<p>Provide immigration matters assistance to UTM international students in details.</p>
							<p><a href="http://isc.utm.my/" class="btn btn-primary btn-sm"> Learn more </a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>

				<div class="col-md-6">
					<!-- Press Item -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/utm-mit.jpg)">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title"> Partners & Academic Collaborations <span class="fh5co-border"></span></h3>
							<p> The list of international partners and universities that have collaborations with UTM </p>
							<p><a href="http://www.utm.my/international/international-partnerships/" class="btn btn-primary btn-sm">Learn more</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>
				<div class="col-md-6">
					<!-- Press Item -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/stud-exchg.jpg);">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title"> Study Abroad & Student Exchange Programmes <span class="fh5co-border"></span></h3>
							<p>A program which will allow you to spend one or two semesters at universities abroad take courses in a regular semester with credit transfer opportunity. </p>
							<p><a href="http://www.utm.my/international/study-abroad/" class="btn btn-primary btn-sm">Learn more</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>

				<div class="col-md-6">
					<!-- Press Item -->
					<div class="fh5co-press-item to-animate">
						<div class="fh5co-press-img" style="background-image: url(images/utm-iip.jpg);">
						</div>
						<div class="fh5co-press-text">
							<h3 class="h2 fh5co-press-title"> INTERNATIONAL INVITATION PROGRAM (IIP) <span class="fh5co-border"></span></h3>
							<p>A program which allows students to participating in a program offered by institution/ organization/ society</p>
							<p><a href="#" class="btn btn-primary btn-sm">Learn more</a></p>
						</div>
					</div>
					<!-- Press Item -->
				</div>

			</div>
		</div>
	</div>
	<footer id="footer" role="contentinfo">
		<div class="container">
			<div class="row row-bottom-padded-sm">
				<div class="col-md-12">
					<p class="copyright text-center">&copy; 2016 E - Campus Management System.  <br> All Rights Reserved. </p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="social social-circle">
						<li><a href="https://www.facebook.com/univteknologimalaysia/"><i class="icon-facebook"></i></a></li>
						<li><a href="https://www.instagram.com/utmofficial/"><i class="icon-instagram"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- For demo purposes Only ( You may delete this anytime :-) -->
	<div id="colour-variations">
		<a class="option-toggle"><i class="icon-gear"></i></a>
		<h3>Preset Colors</h3>
		<ul>
			<li><a href="javascript: void(0);" data-theme="style"></a></li>
			<li><a href="javascript: void(0);" data-theme="pink"></a></li>
			<li><a href="javascript: void(0);" data-theme="blue"></a></li>
			<li><a href="javascript: void(0);" data-theme="turquoise"></a></li>
			<li><a href="javascript: void(0);" data-theme="orange"></a></li>
			<li><a href="javascript: void(0);" data-theme="lightblue"></a></li>
			<li><a href="javascript: void(0);" data-theme="brown"></a></li>
			<li><a href="javascript: void(0);" data-theme="green"></a></li>
		</ul>
	</div>
	<!-- End demo purposes only -->

	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Owl Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
	<script src="js/jquery.style.switcher.js"></script>
	<script>
	$(function(){
		$('#colour-variations ul').styleSwitcher({
			defaultThemeId: 'theme-switch',
			hasPreview: false,
			cookie: {
	          	expires: 30,
	          	isManagingLoad: true
	      	}
		});	
		$('.option-toggle').click(function() {
			$('#colour-variations').toggleClass('sleep');
		});
	});
	</script>
	<!-- End demo purposes only -->

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Excursion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
<script src="https://ajax.useso.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>  

<!-- //js -->

    <!-- <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script> -->
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 登录界面的CSS -->
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/common/jquery-1.11.3.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript -->
    <script src="js/common/bootstrap.min.js"></script>
    <!--  -->
    <script type="text/javascript" src="js/index.js"></script>	
    
    
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="/js/move-top.js"></script>
<script type="text/javascript" src="/js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
</head>
<body>
	<!--navigation-->
	<jsp:include page="../commons/navigater.jsp" />
	<!--navigation-->
	<!--header-->
	<jsp:include page="../commons/header.jsp" />
	<!--//header-->
	<div class="banner">
		<!-- banner-text Slider starts Here -->
				<script src="/js/responsiveslides.min.js"></script>
				 <script>
					// You can also use "$(window).load(function() {"
						$(function () {
						// Slideshow 4
							$("#slider3").responsiveSlides({
							auto: true,
							pager:false,
							nav:true,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							$('.events').append("<li>before event fired.</li>");
							},
							after: function () {
								$('.events').append("<li>after event fired.</li>");
							}
						});	
					});
				</script>
			<!--//End-slider-script -->
			<div class="banner-title"> 
				<div class="container">
					<div  id="top" class="callbacks_container">
						<ul class="rslides" id="slider3">
							<li>
								<h5>The wonderful trip</h5>
								<h1>Molestias excepturi sintprovident</h1>
							</li>
							<li>
								<h5>Vident sintocca</h5>
								<h1>Cupiditate non provident molepturi </h1>
							</li>
							<li>
								<h5>Excepturi sintstias</h5>
								<h1>Non provident sint occaestiasexce</h1>
							</li>
						</ul>	
					</div>
				</div>
            </div>	
	</div>		
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
	<!--div class="banner-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img1.jpg" alt="">
					</a>
				</div>
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img2.jpg" alt="">
					</a>
				</div>
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img3.jpg" alt="">
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="row">
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img4.jpg" alt="">
					</a>
				</div>
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img5.jpg" alt="">
					</a>
				</div>
				<div class="col-md-4 bb-grids">
					<a href="singlepage.html" class="thumbnail">
					  <img src="/images/img6.jpg" alt="">
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
	</div-->	
	<div class="banner-bottom">
		<div class="container">
			<h3>Temporibus autem quibusdam et aut officiis debitis aut rerum </h3>
			<p>Donec vitae tellus non sem vulputate cursus. Aliquam erat volutpat. Proin ut est et sem rhoncus fringilla laoreet at mauris. Integer posuere massa metus. Etiam tortor dui, consectetur quis fringilla nec, suscipit non nibh. Cras velit mauris, consectetur sit amet congue a, dictum vehicula lorem. Etiam imperdiet aliquam sapien, dignissim dapibus lectus imperdiet non. </p>
		</div>
	</div>	
	<div class="features">
		<div class="container">
			<h3>今日头条</h3>
			<div class="row">
				<div class="col-sm-6 col-md-4 featur-grids">
					<div class="thumbnail feature-thmbnl">
						<h4>Gilla frinreet</h4>
						<img src="/images/img7.jpg" alt="">
						<div class="caption">
							<h5><a href="singlepage.html{id}">Aliquam erat volutpat<a></h5>
							<p>Donec vitae tellus non sem vulputate cursus. Aliquam erat volutpat. Proin ut est et sem rhoncus fringilla laoreet</p>
							<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 featur-grids">
					<div class="thumbnail feature-thmbnl">
						<h4>Gilla frinreet</h4>
						<img src="/images/img8.jpg" alt="">
						<div class="caption">
							<h5><a href="singlepage.html">Aliquam erat volutpat<a></h5>
							<p>Donec vitae tellus non sem vulputate cursus. Aliquam erat volutpat. Proin ut est et sem rhoncus fringilla laoreet</p>
							<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 featur-grids">
					<div class="thumbnail feature-thmbnl">
						<h4>Gilla frinreet</h4>
						<img src="/images/img9.jpg" alt="">
						<div class="caption">
							<h5><a href="singlepage.html">Aliquam erat volutpat<a></h5>
							<p>Donec vitae tellus non sem vulputate cursus. Aliquam erat volutpat. Proin ut est et sem rhoncus fringilla laoreet</p>
							<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<jsp:include page="../commons/footer.jsp" />
	<!--smooth-scrolling-of-move-up-->
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				*/
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/bootstrap.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Gallery</title>
<link href="/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/css/style.css" type="text/css" rel="stylesheet" media="all">
<!--web-font-->
<link href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,300,700' rel='stylesheet' type='text/css'>
<!--//web-font-->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Excursion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<!-- js -->
<script src="/js/jquery.min.js"></script>  
<!-- //js -->	
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
	<div class="gallery">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li>Gallery</li>
			</ol>
			<div class="tesimonial"><h3>Gallery</h3></div>
			<div class="gallry-info">
				<div class="col-md-3 gallery-grids">
					<a href="/images/img33.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img33.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom-img img-circle" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img31.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img34.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img33.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img35.jpg" class="img-responsive glry-img " alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img32.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img36.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="gallry-info">
				<div class="col-md-3 gallery-grids">
					<a href="/images/img37.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img37.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom-img img-circle" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img38.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img38.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img39.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img39.jpg" class="img-responsive glry-img " alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img40.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img40.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="gallry-info">
				<div class="col-md-3 gallery-grids">
					<a href="/images/img41.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img41.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom-img img-circle" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img42.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img42.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img28.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img28.jpg" class="img-responsive glry-img " alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="col-md-3 gallery-grids">
					<a href="/images/img24.jpg" class="b-link-stripe b-animate-go  swipebox"  title="">
						<img src="/images/img24.jpg" class="img-responsive glry-img" alt="">
						<div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive zoom" src="/images/e.png" alt=""/>
							</span>					
						</div>
					</a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>	
	</div>	
	<link rel="stylesheet" href="css/swipebox.css">
		<script src="js/jquery.swipebox.min.js"></script> 
			<script type="text/javascript">
				jQuery(function($) {
					$(".swipebox").swipebox();
				});
			</script>
	<!--footer-->
	<jsp:include page="../commons/footer.jsp" />
	<!--//footer-->
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
    <script src="js/bootstrap.js"></script>
</body>
</html>
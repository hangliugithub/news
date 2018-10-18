<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Tours</title>
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

<script type="text/javascript" src="/js/tour.js"></script>	

</head>
<body>
	<!--navigation-->
	<jsp:include page="../commons/navigater.jsp" />
	<!--navigation-->
	<jsp:include page="../commons/header.jsp" />
	<!--//header-->	
	<div class="tour">
		<div class="container">
			<div class="row"> <button class="btn_zhuce" onclick="commit()" type="submit" style="float: right;">确认提交</button></div>
			
			<div class="row tour-info">			
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img23.jpg" class="img-responsive zoom-img " alt="">				
						</a>
						<div class="caption tour-caption">
							<input type="checkbox" id="myCheckBoxN" name="myCheckBoxN" value="1"/>新闻			
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img24.jpg" class="img-responsive zoom-img " alt="">				
						</a>
						<div class="caption tour-caption">
							<input  type="checkbox" id="myCheckBoxY" name="myCheckBoxY" value="2"/>娱乐				
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img25.jpg" class="img-responsive zoom-img" alt="">				
						</a>
						<div class="caption tour-caption">
							<input type="checkbox"  id="myCheckBoxG" name="myCheckBoxG" value="3"/>游戏			
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img26.jpg" class="img-responsive zoom-img" alt="">							
						</a>
						<div class="caption tour-caption">
							<input type="checkbox" id="myCheckBoxT" name="myCheckBoxT" value="4"/>科技			
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img27.jpg" class="img-responsive zoom-img" alt="">						
						</a>
						<div class="caption tour-caption">
							<input type="checkbox" id="myCheckBoxC" name="myCheckBoxC" value="5"/>财经				
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 tour-grids">
					<div class="thumbnail">
						<a href="singlepage.html" title="">
							<img src="/images/img28.jpg" class="img-responsive zoom-img" alt="">
						</a>
						<div class="caption tour-caption">
							<input type="checkbox" id="myCheckBoxS" name="myCheckBoxS" value="6"/>时尚			
						</div>
					</div>
				</div>
			
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
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
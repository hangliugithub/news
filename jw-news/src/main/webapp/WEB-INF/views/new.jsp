<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Blog</title>
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
<script type="text/javascript" src="/js/navigation.js"></script>

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
	<!--blog-->
	<div class="blog">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li>Blog</li>
			</ol>
			<div class="col-md-8 blog-left" >
				<div class="blog-info">
					<h4><a href="singlepage.html">Fringilla condimentum</a></h4>
					<p>Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015 &nbsp;&nbsp; <a href="#">Comments (10)</a></p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="singlepage.html"> <img src="/images/img12.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>
						<h5><a href="singlepage.html">CONDIMENTUM FRINGILLA FRINGILLA CONDIMENTUM,FINIBUS BONORUM MALORUM, DONEC UT QUAM LIGULA, SED NISI LOBORTIS.</a></h5>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text. 
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration  
							in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
						<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
					</div>	
				</div>
				<div class="blog-info">
					<h4><a href="singlepage.html">Fringilla condimentum</a></h4>
					<p>Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015 &nbsp;&nbsp; <a href="#">Comments (10)</a></p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="singlepage.html"> <img src="/images/img13.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>
						<h5><a href="singlepage.html">CONDIMENTUM FRINGILLA FRINGILLA CONDIMENTUM,FINIBUS BONORUM MALORUM, DONEC UT QUAM LIGULA, SED NISI LOBORTIS.</a></h5>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text. 
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration  
							in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
						<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
					</div>	
				</div>	
				<div class="blog-info">
					<h4><a href="singlepage.html">Fringilla condimentum</a></h4>
					<p>Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015 &nbsp;&nbsp; <a href="#">Comments (10)</a></p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="singlepage.html"> <img src="/images/img14.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>
						<h5><a href="singlepage.html">CONDIMENTUM FRINGILLA FRINGILLA CONDIMENTUM,FINIBUS BONORUM MALORUM, DONEC UT QUAM LIGULA, SED NISI LOBORTIS.</a></h5>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text. 
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration  
							in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
						<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
					</div>	
				</div>	
				<div class="blog-info">
					<h4><a href="singlepage.html">Fringilla condimentum</a></h4>
					<p>Posted By <a href="#">Admin</a> &nbsp;&nbsp; on march 2, 2015 &nbsp;&nbsp; <a href="#">Comments (10)</a></p>
					<div class="blog-info-text">
						<div class="blog-img">
							<a href="singlepage.html"> <img src="/images/img15.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>
						<h5><a href="singlepage.html">CONDIMENTUM FRINGILLA FRINGILLA CONDIMENTUM,FINIBUS BONORUM MALORUM, DONEC UT QUAM LIGULA, SED NISI LOBORTIS.</a></h5>
						<p class="snglp">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text.  
							There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration  
							in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum,
							you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
						<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
					</div>	
				</div>	
			</div>	
			<div class="col-md-4 single-page-right">
				<div class="category blog-ctgry">
					<h4>Categories</h4>
					<div class="list-group">
						<a href="singlepage.html" class="list-group-item">Cras justo odio</a>
						<a href="singlepage.html" class="list-group-item">Dapibus ac facilisis in</a>
						<a href="singlepage.html" class="list-group-item">Morbi leo risus</a>
						<a href="singlepage.html" class="list-group-item">Porta ac consectetur ac</a>
						<a href="singlepage.html" class="list-group-item">Vestibulum at eros</a>
						<a href="singlepage.html" class="list-group-item">Cras justo odio</a>
						<a href="singlepage.html" class="list-group-item">Cras justo odio</a>
						<a href="singlepage.html" class="list-group-item">Cras justo odio</a>
					</div>
				</div>	
				<div class="recent-posts">
					<h4>Recent posts</h4>
					<div class="recent-posts-info">
						<div class="posts-left sngl-img">
							<a href="singlepage.html"> <img src="/images/img16.jpg" class="img-responsive zoom-img" alt=""/> </a>
						</div>
						<div class="posts-right">
							<lable>MARCH 5, 2015</lable>
							<h5><a href="singlepage.html">FINIBUS BONORUM MALORUM </a></h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing incididunt.</p>
							<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
						</div>
						<div class="clearfix"> </div>
					</div>	
					<div class="recent-posts-info">
						<div class="posts-left sngl-img">
							<a href="singlepage.html"> <img src="/images/img17.jpg" class="img-responsive zoom-img" alt=""/></a>
						</div>
						<div class="posts-right">
							<lable>MARCH 1, 2015</lable>
							<h5><a href="singlepage.html">FINIBUS BONORUM MALORUM </a></h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing incididunt.</p>
							<a href="singlepage.html" class="btn btn-primary hvr-rectangle-in">Read More</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="comments">
					<h4>Recent comments</h4>
					<div class="comments-info">
						<div class="cmnt-icon-left">
							<a href="singlepage.html"><img src="/images/icon1.png" alt=""/></a>
						</div>
						<div class="cmnt-icon-right">
							<p>MARCH 1, 2015</p>
							<p><a href="singlepage.html">Admin</a></p>
						</div>
						<div class="clearfix"> </div>
						<p class="cmmnt">Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
							sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="comments-info cmnts-mddl">
						<div class="cmnt-icon-left">
							<a href="singlepage.html"><img src="/images/icon1.png" alt=""/></a>
						</div>
						<div class="cmnt-icon-right">
							<p>MARCH 1, 2015</p>
							<p><a href="singlepage.html">Admin</a></p>
						</div>
						<div class="clearfix"> </div>
						<p class="cmmnt">Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
							sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
					<div class="comments-info">
						<div class="cmnt-icon-left">
							<a href="singlepage.html"><img src="/images/icon1.png" alt=""/></a>
						</div>
						<div class="cmnt-icon-right">
							<p>MARCH 1, 2015</p>
							<p><a href="singlepage.html">Admin</a></p>
						</div>
						<div class="clearfix"> </div>
						<p class="cmmnt">Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
							sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
			<nav>
				<ul class="pagination">
					<li>
						<a href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
						<a href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>	
	</div>	
	<!--//blog-->
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
    <script src="/js/bootstrap.js"></script>
</body>
</html>
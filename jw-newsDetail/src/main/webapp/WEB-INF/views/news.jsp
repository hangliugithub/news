<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Blog</title>
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
<!-- 导入news.js -->	
<script type="text/javascript" src="/js/sideEffect.js"></script>
<script type="text/javascript" src="/js/news.js"></script>
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
	<!-- TODO: 分页项 -->
	<div class="blog">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li>Blog</li>
			</ol>
			<div class="col-md-8 blog-left" >
				<!-- js插入新闻详情 -->
			</div>	
			<!-- TODO: Category -->
			<div class="col-md-4 single-page-right">
				<div class="category blog-ctgry">
					<h4>Categories</h4>
					<ul id="kind" class="nav nav-tabs nav-stacked">
						<div class="list-group">
							<li class="active"><a href="#" class="list-group-item">首页</a></li>
							<li><a href="#" class="list-group-item">热点</a></li>
							<li><a href="#" class="list-group-item">游戏</a></li>
							<li><a href="#" class="list-group-item">历史</a></li>
						</div>
					</ul>
				</div>	
				<!-- TODO: Recent Posts -->
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
				<!-- TODO: Comments -->
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
			<!-- TODO: 分页  -->
			<nav>
				<ul class="pagination">
					<!-- js插入分页链接 -->
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
    <script src="/js/bootstrap.js"></script>
</body>
</html>
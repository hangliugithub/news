//@ sourceURL=index.js
var currentPageData = new Array();
$(function(){
	console.log("login.js");
	//给登录表单添加提交事件
	
	loginIndex(1);
//	$("form").submit(function(){
//		
//		return login();
//	})
})
function loginIndex(currentPage){
	
	alert("6666");
	$.ajax({
		url:"/queryIndexNews",
		type:"get",
		data:{"currentPage":currentPage},
		dataType:"json",
		success:function(result){
			alert(result.message);
			var news = result.data;
			$(".row").html("");
			
			$(news).each(function(n,newone){
				var newsId = newone.newsId;
				
				var newsText = newone.newsText;
				newsText = newsText.substring(40,100);
				newsText += "...";
				
				var newsTitle = newone.newsTitle;
//				if(newsTitle.indexOf(">")){
//					newsTitle = newsTitle.split(">")[1];
//					newsTitle = newsTitle.split("<")[0];
//				}
				var ReadMore = "Read More";
//				alert(newsText);
				var div='<div class="col-sm-6 col-md-4 featur-grids">'+
				'<div class="thumbnail feature-thmbnl">'+
				'<h4>'+newone.newsDesc+'</h4>'+
				'<img src='+newone.imageSrc+' alt="">'+
				'<div class="caption">'+
//				'<a onclick="hideClick(\''+newsId+'\')" href="#" ">隐藏</a>'
				'<h5><a onclick="singleClick(\''+newsId+'\')" href="#">'+newsTitle+'</a></h5>'+
//				'<p>'+newsText+'</p>'+
				'<a onclick="singleClick(\''+newsId+'\')" href="#" class="btn btn-primary hvr-rectangle-in">'+ReadMore+'</a>'+
				'</div>'+
				'</div>'+
				'</div>';
				$(".row").append(div);
				if(n==8){
					return false;
				}
			});
			},
		error:function(){
			alert("请求失败");
		}
	});
	
	return false;
}
function singleClick(newsId){
	alert("singlepage");
	//route
	location.href="http://localhost:9092/singlePage/"+newsId;
}
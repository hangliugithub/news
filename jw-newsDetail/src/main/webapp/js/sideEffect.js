$(function(){	
	//查询最新news
	queryLatestNews();
	
	 //查询最新的评论
	queryLatestComment();	
});
//查询最新评论内容
function queryLatestComment(){
	//查询的评论数
	var commentNum = 3;
	$.ajax({
		url: "/news/queryLatestComment",
		type: "get",
		data: {
			"commentNum" : commentNum
		},
		dataType: "json",
		success: function(result){
			if(result.status==200){
				//获取成功
//				alert(result.message);
				var comments = result.data;
				//先清空原有的页面元素
				$(".comments").html("");
				$(".comments").append("<h4>Recent comments</h4>");
				$(comments).each(function(n, comment) {	
					var div =`
						<div class="comments-info cmnts-mddl">
						<div class="cmnt-icon-left">
//							<a href="#"><img src="${comment.user.headPortrait}" alt="头像不见了" /></a>
						</div>
						<div class="cmnt-icon-right">
							<p>${new Date(comment.createDate).toLocaleDateString().replace("/","-").replace("/","-")}</p>
							<p><a href="#">${comment.user.userName}</a></p>
						</div>
						<div class="clearfix"> </div>
						<p class="cmmnt">${comment.commentDesc}</p>
						</div>
						`;
					$(".comments").append(div);
				});
			}			
		},
		error: function(){
			alert("Query latest comment error!");
		}
	});
};
//查询最近的录入新闻条目
function queryLatestNews(){
	//需求的新闻数量,这个数量按理说前端不改就是相对固定的
	//但是为了整体更灵活, 这里认为不应该写死
	var newsNum = 2;
	$.ajax({
		url: "/news/queryLatestNews",
		type: "get",
		data: {
			"newsNum" : newsNum
		},
		dataType: "json",
		success: function(result){
			if(result.status==200){
				//获取成功
//				alert(result.message);
				var newsList = result.data;
				//先清空原有的页面元素
				$("div .recent-posts").html("");
				$("div .recent-posts").append("<h4>Recent posts</h4>");
				$(newsList).each(function(n, news){
					var div = 
						`
						<div class="recent-posts-info">
							<div class="posts-left sngl-img">
								<a href="javascript:singlePage(${news.newsId})"> <img src="${news.newsImage}" class="img-responsive zoom-img" alt=""/> </a>
							</div>
							<div class="posts-right">
								<lable>${news.newsPost}</lable>
								<h5><a href="javascript:singlePage(${news.newsId})"> ${news.newsTitle} </a></h5>
								<p>${news.newsDesc}</p>
								<a href="javascript:singlePage(${news.newsId})" class="btn btn-primary hvr-rectangle-in">Read More</a>
							</div>
							<div class="clearfix"> </div>
						</div>	
						`;
						$("div .recent-posts").append(div);
				});
				$("div .recent-posts").append("<div class='clearfix'> </div>");
			}			
		},//--success callback function end
		error: function(){
			alert("Query latest news error!");
		}
	});//--ajax end
};//--queryLatestNews end
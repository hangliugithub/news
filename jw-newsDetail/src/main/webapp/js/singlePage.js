/**
 * 负责单个新闻详情页的JavaScript
 */
//@ sourceURL=singlePage.js
$(function(){
	//详情页展示评论
	queryCommentsByNewsId();
//	$('#comment form').submit(function(){
//		alert("submit")
//		 editComment()
//	})
});
function editComment(){
//	$('div[class="coment-form"] form input:eq(0)').val()
//	var email = $('div[class="coment-form"] form input[type=""]').val()
	var newsId = $('div[class="coment-form"] form input[type="hidden"]').val()
	var textarea = $('div[class="coment-form"] form textarea').val()
	alert(newsId +"===="+textarea)
	$.ajax({
			url: "/singlePage/editComment",
			type: "get",
			data: {
				"cnewsid" : newsId,
				"commentDesc" : textarea
			},
			dataType: "json",
			success:function(result){
				if(result.status==200){
					alert(result.message)
				}
			},
			error:function(){
				alert("sorry 服务器异常")
			}
	});
	return false;
}
function queryCommentsByNewsId(){
	//从页面中获取news id
	var newsId = $(".single-page .breadcrumb input[type='hidden']").val()
	//将id发送给后台查询这个news对应的comment信息
	//用list<comment>返回
	$.ajax({
		url: "/singlePage/queryCommentsByNewsId",
		type: "get",
		data: {
			"newsId" : newsId
		},
		success: function(result){
			if(result.status==200){
				alert(result.message);
				//获取数据
				var commentList = result.data;
				//清楚原jsp中的内容
				$(".response").html("");
				$(".response").append("<h4>Responses</h4>");
				$(commentList).each(function(n, comment){
					var imgsrc = ${comment.user.headPortrait};
					if(imgsrc==None){
						imgsrc = "#"
					}
					var response = 
						`
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src=imgsrc alt=""/>
								</a>
								<h5><a href="#">${comment.user.userName}</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>${comment.commentDesc}</p>
								<ul>
									<li>${new Date(comment.createDate).toLocaleDateString().replace("/","-").replace("/","-")}</li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						`;
						$(".response").append(response);
				});
			}
		},
		error: function(){
			alert("query comment by id fail!");
		}		
	});
}

//点赞的响应事件
function thumbsUp(currentNewsId){
	//获取页面现在的点赞数
	var thumbsNum = $(".comment-icons .like").text();
	thumbsNum++;
	//存入数据库并且回显
	$.ajax({
		url: "/singlePage/thumbsUp",
		type: "get",
		data: {
			"newsId" : currentNewsId,
			"thumbsNum" : thumbsNum
		},
		dataType: "json",
		success: function(result){
			if(result.status == 200){
				//回显
				$(".comment-icons .like").text(thumbsNum);
			}
		},
		error : function(){
			alert("thumbs up fail !");
		}
	});
}
/**
 * 负责新闻总览详情的JavaScript
 */
//@ sourceURL=news.js
$(function(){	
	//分页查询
	queryAllNewsDetail(1);		
	
	//Category选中状态切换
	$("#kind .list-group li").click(function() {
	   $(this).siblings('li').removeClass('active');  // 删除其他兄弟元素的样式
	    $(this).addClass('active');                            // 添加当前元素的样式
	    queryAllNewsDetail(1);
	 });
	$("form[role='search'] button").click(function(){
		alert("search")
		searchEsNewsDetail(0)
	})
});
/*
 * es 搜索关键字查询
 */
function searchEsNewsDetail(currentPage){	
	if(currentPage==0){
		currentPage=1
	}
		
	var key = $("form[role='search'] input").val();
	//直接发ajax
	$.ajax({
		url: "/news/search",
		type: "get",
		data: {
			"currentPage" : currentPage,
			"key" : key
		},
		dataType: "json",
		success: function(result){
			//如果成功取值了
			if(result.status==200){
				alert(result.message);
				//获取page对象
				var page = result.data;
				//获取当前页数数据
				var newsList = page.data;
				//清空原页面的栏目
				$(".container div[class='col-md-8 blog-left']").html("");
				//构建新闻详情
				$(newsList).each(
						function(n, news){
							//获取news中数据
							alert(news.newsId)
							alert("list")
							var newsBody = 
								`
								<div class="blog-info">		
									<h4><a href="#">${news.newsTitle}</a></h4>
									<p></a> &nbsp;&nbsp; ${news.newsPost}  &nbsp;&nbsp; <a href="#">Comments (??)</a></p>
									<div class="blog-info-text">
										<p class="snglp">${news.newsDesc}</p>
										<div class="blog-img">
											<a href="javascript:singlePage(${news.newsId})"> <img src="${news.newsImage}" class="img-responsive zoom-img" alt="" /></a>
										</div>				
										<br/>
										<a href="javascript:singlePage(${news.newsId})" class="btn btn-primary hvr-rectangle-in">Read More</a>
									</div>	
								</div>
								`;
								$(".container div[class='col-md-8 blog-left']").append(newsBody);
						});
				//清空分页链接
				$("nav .pagination").html("");
				//构建分页链接
				if(page.totalPage>1){
					//多页的时候
					//向前
					var pre = 
						`
						<li>
							<a href="javascript:searchEsNewsDetail(${page.previousPage})" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						`;
					$("nav .pagination").append(pre);
					//中间页数
					$(page.aNum).each(function(n, value){
						if(value==page.currentPage){
							 var mid = `<li class="active"><a href="javascript:searchEsNewsDetail(${value})">${value}</a></li>`;
						}else{
							var mid = `<li><a href="javascript:searchEsNewsDetail(${value})">${value}</a></li>`;
						}
						$("nav .pagination").append(mid);
					});
					//向后
					var next= 
						`
						<li>
							<a href="javascript:searchEsNewsDetail(${page.nextPage})" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
						`;
					$("nav .pagination").append(next);
					
				}else{
					//只有一页的情况下
					var li = 
					`<li>
						<a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li><a href="#">1</a></li>
					<li>
						<a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
						</a>
					</li>`;
					$("nav .pagination").append(li);
				}				
			}			
		},//success callback function end
		error: function(){
			alert("Query page error!");
		}		
	});//----ajax end
};//--queryAllNewsDetail(currentPage) end

//访问单个页面的详情页
function singlePage(newsId){
	//确认进入
//	alert("enter singlePage!");
	//跳转到详情页
	//使用restful拼接跳转URL
	//使用ngnix之后需要更改
	var baseURL = "http://www.jw.com/"; 
	$(location).attr("href", baseURL + "singlePage/"+newsId);
	
};

//总的新闻详情展示--分页查询
function queryAllNewsDetail(currentPage){
	//alert("entered queryAllNewsDetail");
	//获取种类
	var category = $("#kind .list-group li[class=active] a").text();
//	alert(category);
	//直接发ajax
	$.ajax({
		url: "/news/queryAll",
		type: "get",
		data: {
			"currentPage" : currentPage,
			"category" : category
		},
		dataType: "json",
		success: function(result){
			//如果成功取值了
			if(result.status==200){
//				alert(result.message);
				//获取page对象
				var page = result.data;
				//获取当前页数数据
				var newsList = page.data;
				//清空原页面的栏目
				$(".container div[class='col-md-8 blog-left']").html("");
				//构建新闻详情
				$(newsList).each(
						function(n, news){
							//获取news中数据
//							news.newsId
							var newsBody = 
								`
								<div class="blog-info">		
									<h4><a href="#">${news.newsTitle}</a></h4>
									<p></a> &nbsp;&nbsp; ${news.newsPost}  &nbsp;&nbsp; <a href="#">Comments (??)</a></p>
									<div class="blog-info-text">
										<p class="snglp">${news.newsDesc}</p>
										<div class="blog-img">
											<a href="javascript:singlePage(${news.newsId})"> <img src="${news.newsImage}" class="img-responsive zoom-img" alt="" /></a>
										</div>				
										<br/>
										<a href="javascript:singlePage(${news.newsId})" class="btn btn-primary hvr-rectangle-in">Read More</a>
									</div>	
								</div>
								`;
								$(".container div[class='col-md-8 blog-left']").append(newsBody);
						});
				//清空分页链接
				$("nav .pagination").html("");
				//构建分页链接
				if(page.totalPage>1){
					//多页的时候
					//向前
					var pre = 
						`
						<li>
							<a href="javascript:queryAllNewsDetail(${page.previousPage})" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						`;
					$("nav .pagination").append(pre);
					//中间页数
					$(page.aNum).each(function(n, value){
						if(value==page.currentPage){
							 var mid = `<li class="active"><a href="javascript:queryAllNewsDetail(${value})">${value}</a></li>`;
						}else{
							var mid = `<li><a href="javascript:queryAllNewsDetail(${value})">${value}</a></li>`;
						}
						$("nav .pagination").append(mid);
					});
					//向后
					var next= 
						`
						<li>
							<a href="javascript:queryAllNewsDetail(${page.nextPage})" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
						`;
					$("nav .pagination").append(next);
					
				}else{
					//只有一页的情况下
					var li = 
					`<li>
						<a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
					<li><a href="#">1</a></li>
					<li>
						<a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
						</a>
					</li>`;
					$("nav .pagination").append(li);
				}				
			}			
		},//success callback function end
		error: function(){
			alert("Query page error!");
		}		
	});//----ajax end
};//--queryAllNewsDetail(currentPage) end



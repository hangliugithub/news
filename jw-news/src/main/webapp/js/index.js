
$(function(){
	
	//loginIndex(1);
	
	checkLogin();

})

function checkLogin(){
	
	var ticket = getCookie("JW_TICKET");
	
	
	if(!ticket){
		return ;
	}
	//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
	$.ajax({
		url : "http://sso.jw.com/sso/checkLogin/"+ticket,
		dataType : "json",
		type : "GET",
		success : function(data){
			if(data.status == 200){
								
				var _data = JSON.parse(data.data);	//jackson
				var html =_data.userName+"，欢迎登录！<a href=\"http://account.jw.com/web/logout\" >[退出]</a> " +
						" <a href=\" http://176.129.5.78:8090/login.html?JW_TICKET= "+ticket +"\" >[用户中心]</a>";
				$("#loginbar").html(html);
			}
		},
		error : function(){
			alert('index error.');
		}
	});

}

function loginIndex(currentPage){
	
	$.ajax({
		url:"/new/index",
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
				if(newsTitle.indexOf(">")){
					newsTitle = newsTitle.split(">")[1];
					newsTitle = newsTitle.split("<")[0];
				}
				var ReadMore = "Read More";
//				alert(newsText);
				var div='<div class="col-sm-6 col-md-4 featur-grids">'+
				'<div class="thumbnail feature-thmbnl">'+
				'<h4>'+newone.newsDesc+'</h4>'+
				'<img src='+newone.imageSrc+' alt="">'+
				'<div class="caption">'+
				'<h5><a href="new/newsId/'+newsId+'">'+newsTitle+'</a></h5>'+
//				'<p>'+newsText+'</p>'+
				'<a href="new/newsId/'+newsId+'" class="btn btn-primary hvr-rectangle-in">'+ReadMore+'</a>'+
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
$(function(){
	//给登录表单添加提交事件
	checkLogin()
})

function checkLogin(){
	
	alert("hi!")
}
/*
var TT = {
	checkLogin : function(){
		var ticket = $.cookie("JW_TICKET");
		if(!ticket){
			return ;
		}
		//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
		$.ajax({
			url : "http://localhost:9093/sso/checkLogin/+ticket",
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data.status == 200){
					var _data = JSON.parse(data.data);	//jackson
					var html =_data.userName+"，欢迎登录！<a href=\"http://localhost:9092/web/loginout\" class=\"link-logout\">[退出]</a>";
					$("#loginbar").html(html);
				}
			},
			error : function(){
				alert('index error.');
			}
		});
	}
}
*/
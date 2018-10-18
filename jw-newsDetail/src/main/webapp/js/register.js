$(function(){
	console.log("register.js");
	//给登录表单添加提交事件
	$("form").submit(function(){
		
		return login();
	})
})
function login(){
	var loginName = $("form #inputName").val();
	var password = $("#inputPassword").val();
	alert(loginName +password);
//	$.ajax({
//		url:restful,
//		type:"get",
////		data:,
//		dataType:"json",
//		success:function(result){},
//		error:function(){
//			alert("请求失败");
//		}
//	});
	
	return false;
}
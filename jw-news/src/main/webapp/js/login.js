$(function(){
	//给登录表单添加提交事件
	$("form").submit(function(){
		
		return formObj.checkForm();
	})
})


function login(){
	var userName = $("#inputName").val();
	var password = $("#inputPassword").val();
	var yzm=$("#yzm").val();

	
	 $.ajax({
         url : "web/login",
         type : "post",
         data : {
        	 "userName":userName,
        	 "password":password,
        	 "yzm" : yzm
         },
         dataType : 'json',
         success : function(result) {
 			if (result.status == 200) {
 				alert("登录成功");
 				window.location = "www.jw.com/index.html";

 			} else {
 				alert(result.msg);
 			}
 		},
 		error : function() {
 			alert("请求失败");
 		}
 		
     });
	
	return false;
}




var formObj = {
	"checkForm" : function() {
		var flag = true;// 控制表单是否提交的flag,默认为true
		// 非空验证
		// 用户名非空验证
		flag = this.checkNull("inputName", "用户名不能为空") && flag;
		flag = this.checkNull("inputPassword", "密码不能为空") && flag;
		flag = this.checkNull("yzm", "验证码不能为空") && flag;
		


		if (flag == true) {
			
			return login();
		} else {
			return flag;

		}

	},

	"checkNull" : function(name, msg) {
		// 通过name获取对应的input输入框，再调用.val方法获取输入框的值
		var value = $("input[name='" + name + "']").val();
		if ($.trim(value) == "") {
			// 设置错误提示信息
			this.setMsg(name, msg);
			return false;
		} else {
			// 清空之前设置的错误提示信息
			this.setMsg(name, "");
			return true;
		}
	},

	"setMsg" : function(name, msg) {
		// 获取name对应的input后面的span
		$("input[name='" + name + "']").nextAll("span").html(msg).css("color",
				"red");
	}

};

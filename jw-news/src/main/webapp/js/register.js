$(function() {

	$("form").submit(function() {
		return formObj.checkForm();
	})

})

function regist() {
	var userName = $("#inputName").val();
	var nickName = $("#nickName").val();
	var password = $("#inputPassword").val();
	var email = $("#inputEmail").val();
	var yzm= $("#yzm").val();

	$.ajax({
		url : "http://localhost:9092/web/regist",
		type : "post",
		data : {
			"userName" : userName,
			"nickName" : nickName,
			"password" : password,
			"email" : email,
			"yzm":yzm
		},
		dataType : 'json',
		success : function(result) {
			if (result.status == 200) {
				alert("注册成功,请选择感兴趣的栏目");
				window.location = "tour.html";
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
		flag = this.checkNull("nickName", "昵称不能为空") && flag;
		flag = this.checkNull("inputPassword", "密码不能为空") && flag;
		flag = this.checkNull("inputPassword2", "确认密码不能为空") && flag;
		flag = this.checkNull("inputEmail", "邮箱不能为空") && flag;
		flag = this.checkNull("yzm", "验证码不能为空") && flag;
		// 2次密码一致验证
		flag = this.checkPassword("inputPassword", "两次密码应该一致") && flag;
		// 邮箱格式验证
		flag = this.cheakEmail("inputEmail", "邮箱格式不正确") && flag;
		// 验证码正确性校验

		if (flag == true) {
			
			return regist();
		} else {
			return flag;

		}

	},

	"checkPassword" : function(name, msg) {

		var psd1 = $("input[name='" + name + "']").val();
		var psd2 = $("input[name='" + name + "2']").val();
		// 不为空再比较
		if ($.trim(psd1) != "" && $.trim(psd2) != "") {
			if (psd1 != psd2) {
				this.setMsg(name + "2", msg);
				return false;
			} else {
				this.setMsg(name + "2", "");
				return true;
			}
		}
		return false;
	},

	"cheakEmail" : function(name, msg) {
		var email = $("input[name='" + name + "']").val();
		if ($.trim(email) != "") {
			var regex = /^\w+@\w+(\.\w+)+$/;

			if (regex.test(email)) {
				this.setMsg(name, "");
				return true;
			} else {
				this.setMsg(name, msg);
				return false;

			}
		}
		return false;
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
/*
	"cheakYzm" : function(name, msg) {
		var yzm = $("input[name='" + name + "']").val();

		var flag2;
		 
		$.ajax({
			url : "http://localhost:9092/yzm",
			type : "get",
			data : {
				"yzm" : yzm
			},
			dataType : 'json',
			success : function(result) {
				if (result.status == 201) {
					alert("验证码错误")

					flag2=false;
					
					return flag2;


				} else {
					flag2=true;
					return flag2;

				}
			},
			error : function() {
				alert("验证码校验请求失败");
			}

		});


	},
*/
	"setMsg" : function(name, msg) {
		// 获取name对应的input后面的span
		$("input[name='" + name + "']").nextAll("span").html(msg).css("color",
				"red");
	}

};

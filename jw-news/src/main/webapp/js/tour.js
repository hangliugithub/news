
 
function commit(){
   alert("123")
	if($('#myCheckBoxN').is(':checked')) {
		var myCheckBoxN=$("#myCheckBoxN").val();
	}else{
		var myCheckBoxN=null;
		
	}
	
	if($('#myCheckBoxY').is(':checked')) {
		var myCheckBoxY=$("#myCheckBoxY").val();
	}
	else{
		var myCheckBoxY=null;
	}
	
	if($('#myCheckBoxG').is(':checked')) {
		var myCheckBoxG=$("#myCheckBoxG").val();
		}
	else{
		var myCheckBoxG=null;
	}
	
	if($('#myCheckBoxT').is(':checked')) {
		var myCheckBoxT=$("#myCheckBoxT").val();
	}	
	else{
		var myCheckBoxT=null;
	}
	
	if($('#myCheckBoxC').is(':checked')) {
		var myCheckBoxC=$("#myCheckBoxC").val();
	}
	else{
		var myCheckBoxC=null;
	}
	
	if($('#myCheckBoxS').is(':checked')) {
		var myCheckBoxS=$("#myCheckBoxS").val();
	}
	else{
		var myCheckBoxS=null;
	}
	
	
	var select=2;
alert(myCheckBoxN)

	if(select==null){
		alert("请选择感兴趣的栏目")
		
	}
	else{
		

		$.ajax({
			url : "http://localhost:9093/sso/interest",
			type : "post",
			data : {
				"myCheckBoxN" : myCheckBoxN,
				"myCheckBoxY" : myCheckBoxY,
				"myCheckBoxG" : myCheckBoxG,
				"myCheckBoxT" : myCheckBoxT,
				"myCheckBoxC" : myCheckBoxC,
				"myCheckBoxS" : myCheckBoxS
		
			},
			dataType : 'jsonp',
			success : function(result) {
				if (result.status == 200) {
					alert("选择成功");
					window.location = "index.html";

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
	
	

}

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>login</title>
	<meta name="keywords" content="login">
	<meta name="content" content="login">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <!-- <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script> -->
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 登录界面的CSS -->
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/common/jquery-1.11.3.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript -->
    <script src="js/common/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/login.js"></script>
    

}

</head>
<body class="login_bj" >
<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录</h3>
       	  	  <form>
                <input id="inputName" name="inputName" type="text" class="kuang_txt" placeholder="账号"><span></span>
                <input id="inputPassword" name="inputPassword" type="text" class="kuang_txt" placeholder="密码"><span></span>
                          
               <div >
               	<img alt="验证码" onclick="this.src='/defaultKaptcha?d='+new Date()*1" src="/defaultKaptcha" />
               	 <input id="yzm" name="yzm" type="text" style="width:110px; height:40px;"  placeholder="验证码"> <span></span>                       
               </div>         
                
                <button class="btn_zhuce" type="submit">登录</button>
             
                </form>
            </div>
        	
        </div>
    </div>

</div>
    
</body>
</html>
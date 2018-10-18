<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>register</title>
	<meta name="keywords" content="register">
	<meta name="content" content="register">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 登录界面的CSS -->
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/common/jquery-1.11.3.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript -->
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/register.js"></script>





</head>
<body class="login_bj" >

<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	  <form >
       	  	  
                <input id="inputName" name="inputName" type="text" class="kuang_txt phone" placeholder="账号"><span></span>
                <input id="nickName" name="nickName" type="text" class="kuang_txt phone" placeholder="昵称"><span></span>
                <input id="inputPassword" name="inputPassword" type="text" class="kuang_txt possword" placeholder="密码"><span></span>
                <input id="inputPassword2" name="inputPassword2" type="text" class="kuang_txt possword" placeholder="确认密码"><span></span>
                <input id="inputEmail" name="inputEmail" type="text" class="kuang_txt email" placeholder="邮箱"><span></span>
           
      
               
               <div >
               	<img alt="验证码" onclick="this.src='/defaultKaptcha?d='+new Date()*1" src="/defaultKaptcha" />
               	 <input id="yzm" name="yzm" type="text" style="width:110px; height:40px;"  placeholder="验证码"> <span></span>          
                              
               </div>
                            
                <button class="btn_zhuce" type="submit">注册</button>
                </form>
            </div>
        	
        </div>
        <P>欢迎您光临</P>
    </div>

</div>


</body>
</html>

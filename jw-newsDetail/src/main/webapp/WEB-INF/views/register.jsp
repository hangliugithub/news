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
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 登录界面的CSS -->
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/common/jquery-1.11.3.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript -->
    <script src="js/common/bootstrap.min.js"></script>
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
                <input id="inputName" name="" type="text" class="kuang_txt phone" placeholder="手机号">
                <input id="inputEmail" name="" type="text" class="kuang_txt email" placeholder="邮箱">
                <input id="inputPassword" name="" type="text" class="kuang_txt possword" placeholder="密码">
                <input id="inputInvitationCode" name="" type="text" class="kuang_txt possword" placeholder="邀请码">
                <input id="inputAuthCode" name="" type="text" class="kuang_txt yanzm" placeholder="验证码">
                <div>
                	<div class="hui_kuang"><img src="images/zc_22.jpg" width="92" height="31"></div>
                	<div class="shuaxin"><a href="#"><img src="images/zc_25.jpg" width="13" height="14"></a></div>
                </div>
                <div>
               		<input name="" type="checkbox" value=""><span>已阅读并同意<a href="#" target="_blank"><span class="lan">《XXXXX使用协议》</span></a></span>
                </div>
                <!-- <input name="注册" type="button" class="btn_zhuce" value="注册"> -->
                <button class="btn_zhuce" type="submit">注册</button>
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>已有账号？<a href="login.html">立即登录</a></p>
            
            </div>
        </div>
        <P>Diyhe.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您光临</P>
    </div>

</div>


</body>
</html>

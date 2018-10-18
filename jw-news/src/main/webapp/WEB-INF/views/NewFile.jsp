<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- thymeleaf 提示功能 -->
<html xmlns:th="http://www.thymeleaf.org">
<head lang="en">
<meta charset="UTF-8"></meta>
<title>hello</title>
<!-- 引入BootStrap -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="js/common/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/common/bootstrap.min.js"></script>
</head>
<style type="text/css">
body {
    padding: 10px
}
</style>
<body>
    <!-- 提示 -->
    <h3 th:text="${info}"></h3>
    <div>
        <!-- 后面添加参数起到清除缓存作用 -->
        <img alt="验证码" onclick="this.src='/defaultKaptcha?d='+new Date()*1" src="/defaultKaptcha" />
                <input type="text" name="tryCode" />
        
    </div>
    <form action="imgvrifyControllerDefaultKaptcha" > 
        <input type="submit" value="提交" class="btn btn-success"></input>
    </form>
</body>
</html>

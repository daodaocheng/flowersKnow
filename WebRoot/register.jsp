<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtm1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎注册后台管理系统</title>

<link rel="stylesheet" href="assets/css1/login.css" type="text/css"></link></head>

<body>
<div class="main-login">

	<div class="login-content">	
	<h2>用户注册</h2>
	
    <form action="doreg.jsp" method="post" id="login-form" name="login-form">
    <div class="login-info">
	<span class="user">&nbsp;</span>
	<input name="username" id="username" type="text"  value="" class="login-input"/>
	</div>
    <div class="login-info">
	<span class="pwd">&nbsp;</span>
	<input name="password" id="password" type="password"  value="" class="login-input"/>
	</div>
	<div class="login-info">
	<span class="pwd">&nbsp;</span>
	<input name="password2" id="password2" type="password"  value="" class="login-input"/>
	</div>
    <div class="login-oper">
	<input style="margin:1px 10px 0px 2px; float:left;" name="" type="checkbox" value="" checked="checked" /><span>记住密码</span>
	</div>
    <div class="login-oper">
	<input name="" type="submit" value="注 册" class="login-btn"/>
	<input name="" type="submit" value="重 置" class="login-reset"/>
	</div>
    </form>
    </div>
   
</div>   



</body>

</html>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js fixed-layout">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>教程管理——新增教程</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link rel="stylesheet" href="assets/css/admin.css">
<link rel="stylesheet" href="themes/default/default.css" />
<link rel="stylesheet" href="plugins/code/prettify.css" />
</head>
<script type="text/javascript">
	var value = $('input[name="ftype"]:checked').val();
</script>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>花 物 语</strong> <small>-网络教学平台</small>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>
		</div>
		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">

			<li class="am-dropdown" data-am-dropdown><a href="#"><span
					class="am-icon-sign-out"></span> 注销</a>
			</li>
			<li class="am-hide-sm-only"><a href="javascript:;"
				id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span
					class="admin-fullText">开启全屏</span> </a>
			</li>
		</ul>
		</div>
	</header>
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<ul class="am-list admin-sidebar-list">
				<li><a href="index.jsp"><span class="am-icon-home"></span>
						首页</a></li>
			</ul>
			<hr>

			<div class="am-g">
				<div class="am-u-sm-12">
					</form>
					<form action="dofloweradd.jsp" method="post"
						ENCTYPE="multipart/form-data" class="am-form">
						<label for="email">教程名称:</label> <input type="text" name="fname">
						<br> <label for="email">教程分类:</label> <input type="text"
							name="ftype"> <br>（请从“家庭养花、养花技巧、水培花卉、盆景制作”四项中选择一项填写）<br>
						<label for="password1">教程内容</label><br /> 教程简介：
						<textarea name="fbrief" rows="3" cols="20"></textarea>
						<br /> 教程详情：
						<textarea name="finfo" rows="7" cols="20"></textarea>
						<br /> 图片：<input type="file" name="fimage">
						<div class="am-cf">
							<input type="submit" name="" value="提交"
								class="am-btn am-btn-primary am-btn-sm am-fl">
						</div>
					</form>
				</div>

			</div>
		</div>

		<footer class="admin-content-footer">
			<hr>
			<p>
				&copy; <a href="http://cs.sicnu.edu.cn/" target="_blank">四川师范大学
					计算机科学学院</a> 2014级6班辛晨。薛立琴。亚里娜依·阿卡里
			</p>
		</footer>
	</div>
	<!-- content end -->

	</div>

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>

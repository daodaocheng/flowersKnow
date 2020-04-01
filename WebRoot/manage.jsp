<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	Dbtools dbt = new Dbtools();
	String sql = "select count(*) as sumreg from userlistinfo";
	String sqlt1 = "select count(*) as sumteach1 from familyflower";
	String sqlt2 = "select count(*) as sumteach2 from flowertec";
	String sqlt3 = "select count(*) as sumteach3 from waterflower";
	String sqlt4 = "select count(*) as sumteach4 from pjflower";
	String sql5 = "select count(*)as total from familyflower";
	ResultSet rs6 = dbt.executeQuery(sql5);
	rs6.next();
	String sql6 = "select count(*)as total2 from flowertec";
	ResultSet rs7 = dbt.executeQuery(sql6);
	rs7.next();
	String sql7 = "select count(*)as total3 from waterflower";
	ResultSet rs8 = dbt.executeQuery(sql7);
	rs8.next();
	String sql8 = "select count(*)as total4 from pjflower";
	ResultSet rs9 = dbt.executeQuery(sql8);
	rs9.next();
	ResultSet rs = dbt.executeQuery(sql);
	ResultSet rs2 = dbt.executeQuery(sqlt1);
	ResultSet rs3 = dbt.executeQuery(sqlt2);
	ResultSet rs4 = dbt.executeQuery(sqlt3);
	ResultSet rs5 = dbt.executeQuery(sqlt4);
	rs.next();
	rs2.next();
	rs3.next();
	rs4.next();
	rs5.next();
	int sumreg = rs.getInt("sumreg");//总数
	int sumteach = rs2.getInt("sumteach1") + rs3.getInt("sumteach2")
			+ rs4.getInt("sumteach3") + rs5.getInt("sumteach4");
	int pagenumber = 1;
%>
<!doctype html>
<html class="no-js fixed-layout">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
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
</head>
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

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle
					href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
						class="am-icon-caret-down"></span> </a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul>
				</li>
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">开启全屏</span> </a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<ul class="am-list admin-sidebar-list">
					<li><a href="manage.jsp"><span class="am-icon-home"></span>
							管理首页</a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-file"></span> 管理功能 <span
							class="am-icon-angle-right am-fr am-margin-right"></span> </a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="userlist.jsp?pagenumber=<%=pagenumber%>"
								class="am-cf"><span class="am-icon-check"></span> 管理用户<span
									class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span>
							</a></li>
							<li class="admin-parent"><a class="am-cf"
								data-am-collapse="{target: '#collapse-nav'}"><span
									class="am-icon-file"></span> 管理教程 <span
									class="am-icon-angle-right am-fr am-margin-right"></span> </a>
								<ul class="am-list am-collapse admin-sidebar-sub am-in"
									id="collapse-nav">
									<li><a href="editfamilyflower.jsp"><span
											class="am-icon-th"></span> 家庭养花<span
											class="am-badge am-badge-secondary am-margin-right am-fr"><%=rs6.getInt("total")%></span>
									</a></li>
									<li><a href="editflowertec.jsp"><span
											class="am-icon-th"></span> 养花技巧<span
											class="am-badge am-badge-secondary am-margin-right am-fr"><%=rs7.getInt("total2")%></span>
									</a></li>
									<li><a href="editwaterflower.jsp"><span
											class="am-icon-th"></span> 水培花卉<span
											class="am-badge am-badge-secondary am-margin-right am-fr"><%=rs8.getInt("total3")%></span>
									</a></li>
									<li><a href="editpjflower.jsp"><span
											class="am-icon-th"></span> 盆景制作<span
											class="am-badge am-badge-secondary am-margin-right am-fr"><%=rs9.getInt("total4")%></span>
									</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="#"><span class="am-icon-sign-out"></span> 注销</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-primary am-text-lg">首页</strong> / <small>网站当前信息</small>
					</div>
				</div>

				<ul
					class="am-avg-sm-1 am-avg-md-3 am-margin am-padding am-text-center admin-content-list ">
					<li><a href="#" class="am-text-success"><span
							class="am-icon-btn am-icon-file-text"></span><br />注册用户<br /><%=sumreg%></a>
					</li>
					<li><a href="#" class="am-text-warning"><span
							class="am-icon-btn am-icon-briefcase"></span><br />分类<br />4</a>
					</li>
					<li><a href="#" class="am-text-danger"><span
							class="am-icon-btn am-icon-recycle"></span><br />教程量<br /><%=sumteach%></a>
					</li>
				</ul>

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

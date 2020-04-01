<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String ftype = request.getParameter("ftype");
	System.out.print("ftype=" + ftype);
	String id = request.getParameter("id");
	String sql = "";
	Dbtools dbt = new Dbtools();
	if (ftype.equals("familyflower")) {
		sql = "SELECT `familyflower`.`id`,    `familyflower`.`ftitle`,    `familyflower`.`fbrief`,     `familyflower`.`finfo`,	`familyflower`.`fimage`FROM `usermanage`.`familyflower` where id="
				+ id;
	} else if (ftype.equals("flowertec")) {
		sql = "SELECT `flowertec`.`id`,    `flowertec`.`ftitle`,    `flowertec`.`fbrief`,     `flowertec`.`finfo`,	`flowertec`.`fimage`FROM `usermanage`.`flowertec` where id="
				+ id;
	} else if (ftype.equals("waterflower")) {
		sql = "SELECT `waterflower`.`id`,    `waterflower`.`ftitle`,    `waterflower`.`fbrief`,     `waterflower`.`finfo`,	`waterflower`.`fimage`FROM `usermanage`.`waterflower` where id="
				+ id;
	} else if (ftype.equals("pjflower")) {
		sql = "SELECT `pjflower`.`id`,    `pjflower`.`ftitle`,    `pjflower`.`fbrief`,     `pjflower`.`finfo`,	`pjflower`.`fimage`FROM `usermanage`.`pjflower` where id="
				+ id;
	}
	ResultSet rs = dbt.executeQuery(sql);
	rs.next();
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
	int pagenumber = 1;
%>
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
					</ul>
				</div>
			</div>
			<div class="admin-content">
				<div class="admin-content-body">
					<div class="am-g">
						<div class="am-u-sm-12">
							<form action="dofloweredit.jsp?ftype=<%=ftype%>" method="post"
								ENCTYPE="multipart/form-data" class="am-form">
								<input type="hidden" name="id" value="<%=id%>" /> <label
									for="email">教程名称:</label> <input type="text" name="fname"
									value=<%=rs.getString("ftitle")%>>
								<%
									System.out.println(rs.getString("ftitle"));
								%>
								<br> <label for="email">教程分类:</label>
								<%
									if (ftype.equals("familyflower")) {
								%>
								<label for="email">家庭养花</label>
								<%
									} else if (ftype.equals("flowertec")) {
								%>
								<label for="email">养花技巧</label>
								<%
									} else if (ftype.equals("waterflower")) {
								%>
								<label for="email">水培花卉</label>
								<%
									} else if (ftype.equals("pjflower")) {
								%>
								<label for="email">盆景制作</label>
								<%
									}
								%>
								<br> <label for="password1">教程内容</label><br /> 教程简介：
								<textarea name="fbrief" rows="3" cols="20"><%=rs.getString("fbrief")%></textarea>
								<br /> 教程详情：
								<textarea name="finfo" rows="7" cols="20"><%=rs.getString("finfo")%></textarea>
								<br /> 图片：<%=rs.getString("fimage")%><input type="file"
									name="fimage">
								<div class="am-cf">
									<input type="submit" name="" value="修改"
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

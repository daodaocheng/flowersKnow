<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	//pagenumber=3;
	Dbtools dbt = new Dbtools();
	String sql = "";
	ResultSet rs = null;
	//userlist.jsp?pagenumber=2
	int pagesize = 3;
	int pagenumber = 1;
	if (request.getParameter("pagenumber") != null) {
		pagenumber = Integer.parseInt(request
				.getParameter("pagenumber"));
	}
	sql = "SELECT count(*) as total FROM waterflower";//读取总数
	rs = dbt.executeQuery(sql);
	rs.next();
	int total = rs.getInt("total");//总数

	int pagemaxnumber = total / pagesize;//40/10=4    47/10=4*10=40

	if (total != pagemaxnumber * pagesize) {
		//total/pagesize有余数被省略了
		pagemaxnumber++;

	}
	//防止删除最后一页的最后一个时，最后一页消失问题
	//pagenumber不可能大于pagemaxnumber
	if (pagenumber > pagemaxnumber) {
		pagenumber = pagemaxnumber;
	}
	int temp = (pagenumber - 1) * pagesize;
	sql = "SELECT id,ftitle,fbrief,finfo,fimage FROM waterflower limit "
			+ temp + "," + pagesize;
	rs = dbt.executeQuery(sql);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!doctype html>
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>水培花卉</title>
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<title>Amaze UI Admin gallery Examples</title>
			<meta name="description" content="这是一个 gallery 页面">
				<meta name="keywords" content="gallery">
					<meta name="viewport" content="width=device-width, initial-scale=1">
						<meta name="renderer" content="webkit">
							<meta http-equiv="Cache-Control" content="no-siteapp" />
							<link rel="icon" type="image/png" href="assets/i/favicon.png">
								<link rel="apple-touch-icon-precomposed"
									href="assets/i/app-icon72x72@2x.png">
									<meta name="apple-mobile-web-app-title" content="Amaze UI" />
									<link rel="stylesheet" href="assets/css/amazeui.min.css" />
									<link rel="stylesheet" href="assets/css/admin.css">
										<link rel="stylesheet" href="assets/css/showBo.css"
											type="text/css"></link>
										<script type="text/javascript" src="assets/js/showBo.js"></script>
										<link rel="stylesheet" href="assets/css/app.css"
											type="text/css"></link>
</head>
<body>
	<div id="main">
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
					class="am-icon-sign-out"></span> 注销</a></li>
			<li class="am-hide-sm-only"><a href="javascript:;"
				id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span
					class="admin-fullText">开启全屏</span> </a></li>
		</ul>
		</div>
	</header>

		<div class="am-cf admin-main">
			<!-- sidebar start -->
			<ul class="am-list admin-sidebar-list">
				<li><a href="index.jsp"><span class="am-icon-home"></span>
						首页</a>
				</li>
			</ul>
			<!-- sidebar end -->

			<!-- content start -->
			<div class="admin-content">

				<div class="admin-content-body">

					<hr>
						<%
							int i = temp;
							int pagesize2 = 0;
							while (rs.next()) {
								i++;
							    pagesize2++;
						%>
						<ul>
							<li><img src="images/<%=rs.getString("fimage")%>" alt="" />
								<h1>
									<strong><strong><%=rs.getString("ftitle")%></strong> </strong>
								</h1>
								<p>
									<strong><strong><strong><%=rs.getString("fbrief")%></strong>
									</strong> </strong>
								</p>
								<div class="box-163css">
									<input type="button" value="了解更多"
										onclick="Showbo.Msg.alert('<%=rs.getString("finfo")%>')">
								</div>
							</li>
						</ul>
						<%
							}
						%>
					
				</div>
				<div class="am-cf">
					共
					<%=total%>个教程，当前页面有<%=pagesize2%>个教程，当前是第<%=pagenumber%>页
					<div class="am-fr">
						<ul class="am-pagination">
							<%
								for (int j = 1; j <= pagemaxnumber; j++) {
									//pagenumber当前页
									if (j == pagenumber) {
										//当前页
							%>
							<li class="am-active"><a
								href="waterflower.jsp?pagenumber=<%=j%>"><%=j%></a>
							</li>
							<%
								} else {
										//其他页面
							%>
							<li><a href="waterflower.jsp?pagenumber=<%=j%>"><%=j%></a>
							</li>
							<%
								}
							%>
							<%
								}
							%>
						</ul>
					</div>
				</div>
				<hr />
			</div>
			<!-- content end -->

		</div>

		<a href="#"
			class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
			data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

		<footer>
			<p>
				&copy; <a href="http://cs.sicnu.edu.cn/" target="_blank">四川师范大学
					计算机科学学院</a> 2014级6班辛晨。薛立琴。亚里娜依·阿卡里
			</p>
		</footer>
	</div>
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

<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>Landing Page | Amaze UI Example</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<style>
.get {
	background-image: url(images/titlebac.jpeg);
	color: #fff;
	text-align: center;
	padding: 100px 0;
}

.get-title {
	font-size: 200%;
	border: 2px solid #fff;
	padding: 20px;
	display: inline-block;
}

.get-btn {
	background: #fff;
}

.detail {
	background: #fff;
}

.detail-h2 {
	text-align: center;
	font-size: 150%;
	margin: 40px 0;
}

.detail-h3 {
	color: #1f8dd6;
}

.detail-p {
	color: #7f8c8d;
}

.detail-mb {
	margin-bottom: 30px;
}

.hope {
	background: #55d4a5;
	padding: 50px 0;
}

.hope-img {
	text-align: center;
}

.hope-hr {
	border-color: #149C88;
}

.hope-title {
	font-size: 140%;
}

.about {
	background: #fff;
	padding: 40px 0;
	color: #7f8c8d;
}

.about-color {
	color: #34495e;
}

.about-title {
	font-size: 180%;
	padding: 30px 0 50px 0;
	text-align: center;
}

.footer p {
	color: #7f8c8d;
	margin: 0;
	padding: 15px 0;
	text-align: center;
	background: #2d3e50;
}
</style>
</head>
<body>
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-container">
			<h1 class="am-topbar-brand">
				<a href="#">花&nbsp;&nbsp;物&nbsp;&nbsp;语</a>
			</h1>

			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
				data-am-collapse="{target: '#collapse-head'}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>

			<div class="am-collapse am-topbar-collapse" id="collapse-head">
				<ul class="am-nav am-nav-pills am-topbar-nav">
					<li class="am-active"><a href="#">首页</a></li>
					<li><a href="flowerpic.jsp">百花图谱</a></li>
					<li class="am-dropdown" data-am-dropdown><a
						class="am-dropdown-toggle" data-am-dropdown-toggle
						href="javascript:;">知识分享<span class="am-icon-caret-down"></span>
							<%
								int page1 = 0, page2 = 0, page3 = 0, page4 = 0;
								Dbtools dbt = new Dbtools();
								String sql = "select ftitle from familyflower where id=(select MAX(id)from familyflower)";
								String sql2 = "select count(*)as total from familyflower";
								ResultSet rs = dbt.executeQuery(sql);
								ResultSet rs2 = dbt.executeQuery(sql2);
								rs.next();
								rs2.next();
								if (rs2.getInt("total") % 3 == 0) {
									page1 = rs2.getInt("total") / 3;
								} else {
									page1 = rs2.getInt("total") / 3 + 1;
								}
								String sql3 = "select ftitle from flowertec where id=(select MAX(id)from flowertec)";
								String sql4 = "select count(*)as total2 from flowertec";
								ResultSet rs3 = dbt.executeQuery(sql3);
								ResultSet rs4 = dbt.executeQuery(sql4);
								rs3.next();
								rs4.next();
								if (rs4.getInt("total2") % 3 == 0) {
									page2 = rs4.getInt("total2") / 3;
								} else {
									page2 = rs4.getInt("total2") / 3 + 1;
								}
								String sql5 = "select ftitle from waterflower where id=(select MAX(id)from waterflower)";
								String sql6 = "select count(*)as total3 from waterflower";
								ResultSet rs5 = dbt.executeQuery(sql5);
								ResultSet rs6 = dbt.executeQuery(sql6);
								rs5.next();
								rs6.next();
								if (rs6.getInt("total3") % 3 == 0) {
									page3 = rs6.getInt("total3") / 3;
								} else {
									page3 = rs6.getInt("total3") / 3 + 1;
								}
								String sql7 = "select ftitle from pjflower where id=(select MAX(id)from pjflower)";
								String sql8 = "select count(*)as total4 from pjflower";
								ResultSet rs7 = dbt.executeQuery(sql7);
								ResultSet rs8 = dbt.executeQuery(sql8);
								rs7.next();
								rs8.next();
								if (rs8.getInt("total4") % 3 == 0) {
									page4 = rs8.getInt("total4") / 3;
								} else {
									page4 = rs8.getInt("total4") / 3 + 1;
								}
							%> </a>
						<ul class="am-dropdown-content">
							<li class="am-dropdown-header">教程列表</li>
							<li><a href="waterflower.jsp?pagenumber=<%=page1%>">1. <%=rs.getString("ftitle")%></a>
							</li>
							<li><a href="flowertec.jsp?pagenumber=<%=page2%>">2. <%=rs3.getString("ftitle")%></a>
							</li>
							<li><a href="waterflower.jsp?pagenumber=<%=page3%>">3. <%=rs5.getString("ftitle")%></a>
							</li>
							<li><a href="pjflower.jsp?pagenumber=<%=page4%>">4. <%=rs7.getString("ftitle")%></a>
							</li>
							<li><a href="floweradd.jsp">新增教程</a></li>
						</ul>
					</li>
				</ul>
				<%
					String role = (String) session.getAttribute("role");
					String username = (String) session.getAttribute("username");
					if (username == null) {
				%>
				<div class="am-topbar-right">
					<a href="register.jsp"
						class="am-btn am-btn-secondary am-topbar-btn am-btn-sm"><span
						class="am-icon-pencil"></span> 注册</a>
				</div>

				<div class="am-topbar-right">
					<a href="login.jsp"
						class="am-btn am-btn-primary am-topbar-btn am-btn-sm"><span
						class="am-icon-user"></span> 登录</a>
				</div>
				<%
					} else {
						if (role.equals("manager")) {
							//显示管理选项
				%>
				<div class="am-topbar-right">
					<a href="manage.jsp"
						class="am-btn am-btn-secondary am-topbar-btn am-btn-sm"><span
						class="am-icon-pencil"></span> 管理页面</a>
				</div>
				<%
					}
				%>
				<div class="am-topbar-right">
					<span class="am-btn am-btn-secondary am-topbar-btn am-btn-sm">
						欢迎你！<%=username%></span>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</header>

	<div class="get">
		<div class="am-g">
			<div class="am-u-lg-12">
				<h1 class="get-title">
					<strong>花花世界</strong>
				</h1>

				<p>
					<strong><strong><strong><strong><strong>有个会养花的老公是种怎样的体验？</strong>
							</strong> </strong> </strong> </strong>
				</p>
			</div>
		</div>
	</div>

	<div class="detail">
		<div class="am-g am-container">
			<div class="am-u-lg-12">
				<h2 class="detail-h2">
					花物语，您身边的养花专家。<br>百万花友聚集地，爱花秀出来！
				</h2>

				<div class="am-g">
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12 detail-mb">

						<li><a href="familyflower.jsp"> <img
								class="am-img-thumbnail am-img-bdrs" src="images/nys.jpg" alt="" />
								<div class="gallery-title">
									<h1 class="detail-h3">家庭养花</h1>
								</div> </a></li>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12 detail-mb">
						<li><a href="flowertec.jsp"><div class="gallery-title">
									<h1 class="detail-h3">养花技巧</h1>
								</div> <img class="am-img-thumbnail am-img-bdrs" src="images/wsj.jpg"
								alt="" /> </a></li>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12 detail-mb">

						<li><a href="waterflower.jsp"> <img
								class="am-img-thumbnail am-img-bdrs" src="images/spql.jpg"
								alt="" />
								<div class="gallery-title">
									<h1 class="detail-h3">水培花卉</h1>
								</div> </a></li>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12 detail-mb">
						<li><a href="pjflower.jsp"><div class="gallery-title">
									<h1 class="detail-h3">盆景制作</h1>
								</div> <img class="am-img-thumbnail am-img-bdrs" src="images/ych.jpg"
								alt="" /> </a></li>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="hope">
		<div class="am-g am-container">
			<div class="am-u-lg-4 am-u-md-6 am-u-sm-12 hope-img">
				<img src="assets/i/examples/landing.png" alt=""
					data-am-scrollspy="{animation:'slide-left', repeat: false}">
				<hr class="am-article-divider am-show-sm-only hope-hr">
			</div>
			<div class="am-u-lg-8 am-u-md-6 am-u-sm-12">
				<h2 class="hope-title">同我们一起打造你的花花世界！</h2>

				<hr>
				<p>
					&copy; <a href="http://cs.sicnu.edu.cn/" target="_blank">四川师范大学
						计算机科学学院</a> 2014级6班辛晨。薛立琴。亚里娜依·阿卡里
				</p>
			</div>
		</div>
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
</body>
</html>

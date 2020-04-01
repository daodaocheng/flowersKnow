<%@page import="java.sql.ResultSet"%>
<%@page import="com.sql.Dbtools"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//pagenumber=3;
	Dbtools dbt = new Dbtools();
	String sql = "";
	ResultSet rs = null;
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
	//userlist.jsp?pagenumber=2
	int pagesize = 8;
	int pagenumber = 1;
	if (request.getParameter("pagenumber") != null) {
		pagenumber = Integer.parseInt(request
				.getParameter("pagenumber"));
	}
	sql = "SELECT count(*) as total FROM userlistinfo";//读取总数
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
	sql = "SELECT id,name,role, mobile FROM userlistinfo limit " + temp
			+ "," + pagesize;
	rs = dbt.executeQuery(sql);
%>
<!doctype html>
<html class="no-js fixed-layout">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>用户管理</title>
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

			<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

				<ul
					class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
					<li class="am-dropdown" data-am-dropdown><a
						class="am-dropdown-toggle" data-am-dropdown-toggle
						href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
							class="am-icon-caret-down"></span> </a>
						<ul class="am-dropdown-content">
							<li><a href="#"><span class="am-icon-user"></span> 资料</a>
							</li>
							<li><a href="#"><span class="am-icon-cog"></span> 设置</a>
							</li>
							<li><a href="#"><span class="am-icon-power-off"></span>
									退出</a>
							</li>
						</ul>
					</li>
					<li class="am-hide-sm-only"><a href="javascript:;"
						id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
							<span class="admin-fullText">开启全屏</span> </a>
					</li>
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
					<div class="am-cf am-padding am-padding-bottom-0">
						<div class="am-fl am-cf">
							<strong class="am-text-primary am-text-lg">管理用户</strong> / <small>manage
								user</small>
						</div>
					</div>

					<hr>

					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-id">序号</th>
											<th class="table-title">用户名</th>
											<th class="table-type">角色</th>
											<th class="table-author am-hide-sm-only">手机</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<%
											int i = temp;
											int pagesize2 = 0;
											while (rs.next()) {
												i++;
												pagesize2++;
										%>
										<tr>
											<td><%=i%></td>
											<td><%=rs.getString("name")%></td>
											<td><%=rs.getString("role")%></td>
											<td><%=rs.getString("mobile")%></td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<a
															href="useredit.jsp?id=<%=rs.getString("id")%>&pagenumber=<%=pagenumber%>"
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span> 编辑 </a><a
															href="douserdelete.jsp?id=<%=rs.getString("id")%>&pagenumber=<%=pagenumber%>"
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除 </a>
													</div>
												</div></td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
								<div class="am-cf">
									共
									<%=total%>个用户，当前页面有<%=pagesize2%>个用户，当前是第<%=pagenumber%>页
									<div class="am-fr">
										<ul class="am-pagination">
											<%
												for (int j = 1; j <= pagemaxnumber; j++) {
													//pagenumber当前页
													if (j == pagenumber) {
														//当前页
											%>
											<li class="am-active"><a
												href="userlist.jsp?pagenumber=<%=j%>"><%=j%></a>
											</li>
											<%
												} else {
														//其他页面
											%>
											<li><a href="userlist.jsp?pagenumber=<%=j%>"><%=j%></a>
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
							</form>
						</div>

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

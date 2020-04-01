<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js">
<head>
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
</head>
<body>
	<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

	<header class="am-topbar am-topbar-inverse admin-header">
		<div class="am-topbar-brand">
			<strong>花 物 语</strong>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>
						<span class="admin-fullText">开启全屏</span> </a></li>
			</ul>
		</div>
	</header>

	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<ul class="am-list admin-sidebar-list">
			<li><a href="index.jsp"><span class="am-icon-home"></span>
					首页</a></li>
		</ul>
		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">

			<div class="admin-content-body">

				<hr>

				<ul
					class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/fxh.jpg" alt="" />
							<div class="gallery-title">繁星花，花开五瓣呈五角星状，也叫作五星花。数十朵的五星小花聚集在一起，时分的艳丽悦目。花期持久，颜色众多，粉红、绯红、桃红、白色等，让你眼花缭乱！</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/flk.jpg" alt="" />
							<div class="gallery-title">当你厌倦了凡世，想要觅得一片净土远离纷争，那么就在家里院子种上福禄考吧！它既着花密，花期又长，花开的时候满山遍野，让人看着豁然开朗，让人心中顿时变得宁静。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/hbmd.jpg" alt="" />
							<div class="gallery-title">白色的荷包牡丹是培育出来的变种，颜色纯白无暇，花朵形象高洁。</div> </a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/lbh.jpg" alt="" />
							<div class="gallery-title">.说到母爱，不得不提康乃馨，但也不要忘了我们的鲁冰花。鲁冰花也是代表母爱的一种花呢，其实鲁冰花真漂亮的，但是它还有其他的象征意义。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/lsl.jpg" alt="" />
							<div class="gallery-title">蓝石莲是景天科石莲花属多肉，有着非常特别的蓝色叶片，光照不足时会变成蓝绿色。叶片上覆有白粉，褪去后叶片光滑鲜亮。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/www.jpg" alt="" />
							<div class="gallery-title">勿忘我又叫星辰花，不凋花，匙叶花。它的花语是永恒的爱、浓情厚谊、永不变的心。每每听到这个名字，就会很容易明白它的含义了。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/yzh.jpg" alt="" />
							<div class="gallery-title">在众多的花中，要论端庄典雅，花色如遇，莫过于玉簪花了。玉簪花是花中仙子，美丽并且香味幽远，很多认识玉簪花的人都是闻香而来的。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/zz.jpg" alt="" />
							<div class="gallery-title">紫章，一个文绉绉的名字，只因在人群中多看了你一眼，便再也无法转移视线，你的美，鲜有人懂。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/zzm.jpg" alt="" />
							<div class="gallery-title">珍珠梅，那是怎样的一种“花”哟，一坨植株的模样，肥肥厚厚的。花蕾倒还算精细，像没有光泽的珍珠，碎碎密密的挂满肥硕的身子。不美，却还张扬喧闹着，招蜂引蝶！
							</div> </a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/cch.jpg" alt="" />
							<div class="gallery-title">长春花，顾名思义，就是说它四季长春。长春花能够全年开放，对于喜欢花的人来说，长春花是观花的好帮手，有了它，家里就能四季飘香了。</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/bzl.jpg" alt="" />
							<div class="gallery-title">百子莲有白色粉色蓝色等多种栽培品种。花色繁多的百子莲，却在看到蓝色它之后被迷住。它的蓝色，是神秘的，是忧郁的，是迷人的！</div>
					</a>
					</li>
					<li><a href="#"> <img class="am-img-thumbnail am-img-bdrs"
							src="images/mzm.jpg" alt="" />
							<div class="gallery-title">一串串雪白的花苞晶莹剔透，或许是因为数量太多，整个花絮都沉甸甸的，马醉木花宝宝们纷纷垂下了“头”。</div>
					</a>
					</li>
				</ul>
			</div>

			<footer class="admin-content-footer">
				<hr>
				<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed
					under MIT license.</p>
			</footer>

		</div>
		<!-- content end -->

	</div>

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<footer>
		<hr>
		<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under
			MIT license.</p>
	</footer>

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

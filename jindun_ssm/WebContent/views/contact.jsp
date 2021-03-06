<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="yuan.zhang.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>金盾智联</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/bootstrap.css" rel="stylesheet" />
<link href="../css/css.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../css/styles.css">
<script src="../js/jquery-1.9.1.min.js"></script>
<link href="../css/animate.min.css" rel="stylesheet" />
<script src="../js/banner.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<%
		//form表单中action的内容会默认加上当前根目录，以下两行代码避免此情况发生，得到正确的路径。
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	<div class="header">
		<div class="container">
			<div class="row header_box">
				<a href="../views/index.jsp"><img src="../images/logo.png"
					class="pull-left logo" /></a>
				<div class="pull-right call">
					<ul>
						<li class="border_rt"><i class="icon iconfont"></i> 24小时服务热线<br />4000-798-369
						</li>
						<li class="play">微信关注<br />下载APP
							<div class="play_box animated">
								<div class="pull-left box">
									<h4>微信关注</h4>
									<img src="../images/erweima.png" />
								</div>
								<div class="pull-left box">
									<h4>下载APP</h4>
									<img src="../images/mg.png" />
								</div>
								<div class="clear"></div>
								<span></span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="nav_box">
			<div class="container warp">
				<ul class="pull-left">
					<li><a href="../views/index.jsp"> <i class="icon iconfont">&#xe606;</i>
							网站首页
					</a></li>
					<li><a href="../views/serve.jsp"> <i class="icon iconfont">&#xe634;</i>
							服务介绍
					</a></li>
					<li><a href="../views/news.jsp"> <i class="icon iconfont">&#xe6cb;</i>
							新闻资讯
					</a></li>
					<li class="ac"><a href="contact.jsp"> <i
							class="icon iconfont">&#xe605;</i> 联系我们
					</a></li>
					<li>
						<%
							//	获取session作用域的user对象
							User user = (User) session.getAttribute("user");
							String username = null;
							if (user != null) {
								username = user.getUsername();
							}
						%> <a href="<%=basePath%>record/selectRecord?username=<%=username%>">
							<i class="icon iconfont">&#xe66c;</i> 通行记录
					</a>
					</li>
					<div class="clear"></div>
				</ul>
				<div class="logoin pull-right">
					<%
						if (username == null) {
							out.print("<a href='../views/login.jsp' class='ac'>");
							out.print("<i class='icon iconfont'>&#xe60c;</i>登陆</a>");
							out.print("<a href='../views/enroll.jsp'>");
							out.print("<i class='icon iconfont' >&#xe697;</i>注册</a>");
						} else {
							out.print("<a href='../views/index.jsp' class='ac'>");
							out.print("<i class='icon iconfont'>&#xe60c;</i>");
							out.print(username + "</a>");
							out.print("<a href='../views/login.jsp'");
							out.print("<i class='icon iconfont' >&#xe697;</i>注销</a>");
						}
					%>
				</div>
			</div>
		</div>
	</div>

	<!------------banner---------->
	<!--全屏滚动-->
	<div class="banner">
		<div class="b-img">
			<a href="#"
				style="background: url(../images/banner01.png) center no-repeat;"></a>
			<a href="#"
				style="background: url(../images/banner02.png) center no-repeat;"></a>

		</div>
		<div class="b-list"></div>
		<!---
		  <a class="bar-left" href="#"><em></em></a>
		  <a class="bar-right" href="#"><em></em></a> 
		  --->
	</div>
	<!--end 全屏滚动-->

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="title_3">
					<h3>联系我们</h3>
					<div class="list_line "></div>
					<p>
						感谢使用金盾产品和服务<br>您宝贵的建议是金盾前进的动力，我们期待您的反馈和建议
					</p>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="row contact_box">
					<div class="col-xs-4">
						<i class="icon iconfont"></i> <span>服务热线<br />4000-798-369
						</span>
					</div>
					<div class="col-xs-4">
						<i class="icon iconfont">&#xe636;</i> <span>服务邮箱<br />jdwlkf@126.com
						</span>
					</div>
					<div class="col-xs-4">
						<i class="icon iconfont">&#xe61c;</i> <span>公司地址<br />山东省烟台市莱山区迎春大街133号
						</span>
					</div>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="row contact">
					<div class="col-xs-6">
						<!--百度地图容器-->
						<div
							style="width: 100%; height: 300px; border: #ccc solid 1px; font-size: 12px"
							id="map"></div>
					</div>
					<div class="col-xs-6 idea">
						<ul>
							<li><input type="text" class="form-control"
								placeholder="联系人姓名" /></li>
							<li><input type="text" class="form-control"
								placeholder="请输入你的电话，以便联系您" /></li>
							<li><textarea class=" form-control" placeholder="反馈意见"
									style="width: 100%; height: 150px;"></textarea></li>
							<li>
								<button class="col-xs-12 btn btn-danger">提交信息</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!---------footer-------------->
	<div class="footer ">
		<div class="container box">
			<div class="row">
				<div class="col-xs-4">
					<h4>关于我们</h4>
					<a>
						金盾网联是由省有关部门牵头发起面向全省推行的惠民直通车项目，其携手中国银行、中国石化等多家百强企业全新联合打造，为有车一族提供便捷、安全、实惠、省时的客户绿色通道。
					</a>
				</div>
				<div class="col-xs-4">
					<h4>友情链接</h4>
					<a href="http://www.zonuo-china.com/">烟台中诺网络科技有限公司</a> <a
						href="http://www.dotopyun.com/">山东兴鋆网络科技有限公司</a>
				</div>
				<div class="col-xs-4  text-center">
					<div class="pull-left ig_d">
						<h4>微信关注</h4>
						<img src="../images/erweima.png" />
					</div>
					<div class="pull-left ig_d">
						<h4>下载APP</h4>
						<img src="../images/mg.png" />
					</div>


				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<span></span> <span>©2005-2015 山东金盾经贸投资有限公司 版权所有
							鲁ICP备12010501号</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--引用百度地图API-->
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=HQnEzD1dQywg1vTedOUqZ3LR6pkY12LG"></script>
<script type="text/javascript">
	//创建和初始化地图函数：
	function initMap() {
		createMap();//创建地图
		setMapEvent();//设置地图事件
		addMapControl();//向地图添加控件
		addMapOverlay();//向地图添加覆盖物
	}
	function createMap() {
		map = new BMap.Map("map");
		map.centerAndZoom(new BMap.Point(121.449201, 37.475054), 19);
	}
	function setMapEvent() {
		map.enableScrollWheelZoom();
		map.enableKeyboard();
		map.enableDragging();
		map.enableDoubleClickZoom()
	}
	function addClickHandler(target, window) {
		target.addEventListener("click", function() {
			target.openInfoWindow(window);
		});
	}
	function addMapOverlay() {
		var markers = [ {
			content : "金盾网联是由省有关部门牵头发起面向全省推行的惠民直通车项目，其携手中国银行、中国石化等多家百强企业全新联合打造，为有车一族提供便捷、安全、实惠、省时的客户绿色通道。整个服务系统由中国银行提供全程金融保障，并由中国银行发行的金盾网联信用卡作为身份识别与结算平台。",
			title : "金盾网联智能车联网服务平台",
			imageOffset : {
				width : -46,
				height : -21
			},
			position : {
				lat : 37.474972,
				lng : 121.448581
			}
		} ];
		for (var index = 0; index < markers.length; index++) {
			var point = new BMap.Point(markers[index].position.lng,
					markers[index].position.lat);
			var marker = new BMap.Marker(
					point,
					{
						icon : new BMap.Icon(
								"http://api.map.baidu.com/lbsapi/createmap/images/icon.png",
								new BMap.Size(20, 25), {
									imageOffset : new BMap.Size(
											markers[index].imageOffset.width,
											markers[index].imageOffset.height)
								})
					});
			var label = new BMap.Label(markers[index].title, {
				offset : new BMap.Size(25, 5)
			});
			var opts = {
				width : 200,
				title : markers[index].title,
				enableMessage : false
			};
			var infoWindow = new BMap.InfoWindow(markers[index].content, opts);
			marker.setLabel(label);
			addClickHandler(marker, infoWindow);
			map.addOverlay(marker);
		}
		;
	}
	//向地图添加控件
	function addMapControl() {
		var navControl = new BMap.NavigationControl({
			anchor : BMAP_ANCHOR_TOP_LEFT,
			type : BMAP_NAVIGATION_CONTROL_LARGE
		});
		map.addControl(navControl);
	}
	var map;
	initMap();
</script>
<script>
	$(".play").mouseover(function() {
		$(".play_box").addClass("fadeInUp");
	});
</script>

</html>
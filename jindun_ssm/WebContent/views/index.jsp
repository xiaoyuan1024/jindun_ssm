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
					<li class="ac"><a href="../views/index.jsp"> <i
							class="icon iconfont">&#xe606;</i> 网站首页
					</a></li>
					<li><a href="../views/serve.jsp"> <i class="icon iconfont">&#xe634;</i>
							服务介绍
					</a></li>
					<li><a href="../views/news.jsp"> <i class="icon iconfont">&#xe6cb;</i>
							新闻资讯
					</a></li>
					<li><a href="../views/contact.jsp"> <i
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

	<!-------主体------------->

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="title">
					<p>我们是谁?</p>
					<h1>智能车联网定位服务专家</h1>
					<span> 金盾网联·智能车联网服务平台<br />
						是由省有关部门牵头发起面向全省推行的惠民直通车项目，其携手中国银行、中国石化等多家百强企业全新联合打造，为有车一族提供便捷、安全、实惠、省时的客户绿色通道。整个服务系统由中国银行提供全程金融保障，并由中国银行发行的金盾网联信用卡作为身份识别与结算平台。
					</span>
				</div>
			</div>
			<div class="col-xs-12">
				<div class="who">
					<div class="ig">
						<img src="../images/a1.png" />
					</div>
					<div class="ron">
						<ul>
							<li><img src="../images/a2.png" />
								<p>北斗卫星定位,精确及时。定位、通信、授时，随时查询车辆的运行轨迹</p>
								<div class="clear"></div></li>
							<li><img src="../images/a3.png" />
								<p>全国道路货运车辆公共监管与服务平台，更靠谱，更贴心，更专业</p>
								<div class="clear"></div></li>
							<li><img src="../images/a4.png" />
								<p>特色道路接力救援，机油、轮胎、维修服务。全国高速信用通行服务等</p>
								<div class="clear"></div></li>
							<li><img src="../images/a5.png" />
								<p>轻轻松松一站式 网上办理，申请信用卡，高速路信用通行</p>

								<div class="clear"></div></li>
							<li><img src="../images/a6.png" />
								<p>高速公路信用通行！先通行，后付费！清晰账单，明白消费！</p>

								<div class="clear"></div></li>


						</ul>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid"
		style="background: url(../images/b.jpg) 0px 0px; margin-top: 50px">
		<div class="container">
			<div class="row location">
				<div class="col-xs-3">
					<img src="../images/c1.png" />
					<p>北斗卫星定位</p>
					<span>北斗定位系统可向用户提供全天候、二十四小时的即时定位服务，授时精度可达数十纳秒(ns)的同步精度</span>
				</div>
				<div class="col-xs-3">
					<img src="../images/c2.png" />
					<p>部标北斗卫星定位</p>
					<span>【金盾网联】所提供的【北斗卫星定位】终端，符合国家及交通运管处、交通厅最新标准要求。可接入国家及省货运技术服务平台。</span>
				</div>
				<div class="col-xs-3">
					<img src="../images/c3.png" />
					<p>全国货运平台</p>
					<span>您可登陆电脑及手机客户端对车辆位置进行实时查询，超声波油控，轨迹回放，疲劳超速驾驶报警，远程监听，远程升级等，通过平台综合管控。</span>
				</div>
				<div class="col-xs-3">
					<img src="../images/c4.png" />
					<p>北斗车联网</p>
					<span>自动记录车辆行驶数据，哪怕是遇到意外掉电数据也不会丢失，北斗卫星管理监控系统同样可以随时查询车辆的运行轨迹。</span>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="title">
					<h1>新闻资讯</h1>
					<span> 金盾网联·智能车联网服务平台 为您展示我们最新的产品和技术专业 </span>
				</div>
			</div>
		</div>

		<div class="row news">
			<div class="col-xs-4">
				<h4>这个亚洲国家最眼红北斗成功...</h4>
				<span>2017-4-12</span>
				<p>中国的“北斗”导航系统作为中国自己的拥有完全自主知识产权的卫星导航系统...</p>

				<button class="btn btn-danger">阅读更多</button>
			</div>
			<div class="col-xs-4">
				<h4>这个亚洲国家最眼红北斗成功...</h4>
				<span>2017-4-12</span>
				<p>中国的“北斗”导航系统作为中国自己的拥有完全自主知识产权的卫星导航系统...</p>
				<button class="btn btn-danger">阅读更多</button>
			</div>
			<div class="col-xs-4">
				<h4>这个亚洲国家最眼红北斗成功...</h4>
				<span>2017-4-12</span>
				<p>中国的“北斗”导航系统作为中国自己的拥有完全自主知识产权的卫星导航系统...</p>

				<button class="btn btn-danger">阅读更多</button>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="title">
					<h1>合作伙伴</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-4">
				<img src="../images/lg1.png" />
			</div>
			<div class="col-xs-4">
				<img src="../images/lg2.png" />
			</div>
			<div class="col-xs-4">
				<img src="../images/lg3.png" />
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
	<!---------------------QQ客服浮动窗口------------------------------------>
	<div id="rightArrow">
		<a href="javascript:;" title="在线客户"></a>
	</div>
	<div id="floatDivBoxs">
		<div class="floatDtt">在线客服</div>
		<div class="floatShadow">
			<ul class="floatDqq">
				<li style="padding-left: 0px;"><a target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&amp;uin=3120728514&amp;site=qq&amp;menu=yes"><img
						src="../images/qq.png" align="absmiddle">&nbsp;&nbsp;在线客服1号</a></li>
				<li style="padding-left: 0px;"><a target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&amp;uin=2109558299&amp;site=qq&amp;menu=yes"><img
						src="../images/qq.png" align="absmiddle">&nbsp;&nbsp;在线客服2号</a></li>

			</ul>

			<!-----
        <div class="floatDtxt">热线电话</div>
        <div class="floatDtel"><img src="images/online_phone.jpg" width="155" height="45" alt=""></div>
        <div style="text-align:center;padding:10PX 0 5px 0;background:#EBEBEB;"><img src="images/wap_ico.jpg"><br>微信公众账号</div>
        ----->
		</div>
		<div class="floatDbg"></div>
	</div>

	<script type="text/javascript">
		var flag = 1;
		$('#rightArrow').click(function() {
			if (flag == 1) {
				$("#floatDivBoxs").animate({
					right : '-175px'
				}, 300);
				$(this).animate({
					right : '-5px'
				}, 300);
				$(this).css('background-position', '-50px 0');
				flag = 0;
			} else {
				$("#floatDivBoxs").animate({
					right : '0'
				}, 300);
				$(this).animate({
					right : '170px'
				}, 300);
				$(this).css('background-position', '0px 0');
				flag = 1;
			}
		});
	</script>

	<!---------------------QQ结束-------------------------------------------------->
</body>
<script>
	$(".play").mouseover(function() {
		$(".play_box").addClass("fadeInUp");
	});
</script>
</html>
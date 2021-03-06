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
					<li class="ac"><a href="news.jsp"> <i
							class="icon iconfont">&#xe6cb;</i> 新闻资讯
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
						%> <a
						href="<%=basePath%>record/selectRecord?username=<%=username%>">
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
	<div class="container-fluid catalogue">
		<div class="container">
			<!---------------导航------------------>
			<div class="row">
				<div class="col-md-4 col-sm-12 col-xs-12 text-center">
					<p>新闻资讯目录导航</p>
				</div>
				<div class="col-md-8 col-sm-12 col-xs-12 text-center">
					<a href="../views/news.jsp" class="ac">新闻资讯</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="../views/news_ds">
				<h3>
					这个亚洲国家最眼红北斗成功：偷偷干扰结果被最强中国芯全面反制 <br /> <span>2017-4-12/作者：Admin</span>
				</h3>

				<p>这个亚洲国家最眼红北斗成功：偷偷干扰结果被最强中国芯全面反制
					中国的“北斗”导航系统作为中国自己的拥有完全自主知识产权的卫星导航系统，已经在我们日常的生产生活中越来越受到重用，甚至很多朋友的手机里已经安装有兼容北斗导航的芯片，可以说北斗已经深入到每个人身上的方方面面。但是其实我们并不知道，在天上这个领域。全世界的争夺是相当的激烈，现有美国的GPS系统，俄罗斯的GLONASS系统，还有欧洲的Galileo系统。所以为了竞争甚至采取了一些不太光彩的手段，尤其是我们熟知的亚洲某国，尤为起劲！
				</p>
				<img src="../images/h1.jpg" />
				<p>
					例如在2007年，我国的一颗北斗卫星在经过亚洲某国上空时，出现信号传输中断问题，而且这种干扰是全面的区域干扰，并不是小型小规模的单点式干扰，所以这明显是一种准军事行为，需要动用大功率的干扰机在多个频段上进行昼夜不停的干扰，明显就是针对北斗来的！怎么办？这颗北斗卫星是我们的一颗先导星，作为技术验证卫星为我们北斗下一步的全球组网工作做先导。当时很多专家都表示这个国家干扰中国卫星已经是常态化了，不如像以前那样“躲”过去算了-调轨避开这一区域。但是“要‘躲’永远‘躲’不完。如果‘抗’，则治标治本！
				</p>
				<p>
					中国的北斗团队进行持续1个月的信号跟踪，结合对方针对干扰机的信号特性，发现主要是利用我方采用的国际标准化芯片的特性进行针对性干扰。发现问题解决就好解决了，使用的我们国产的自主研发的CPU替换芯片，同时加强了一种复杂的干扰抑制计算方法，使得我们原有的信号性能提升了近一倍，而接收机的功耗却降低了一般，抗干扰性能更是几何层级的提升。这样的提升不仅仅显示了中国智慧和中国制造的实力，更体现了中国航天人的“两弹一星”精神。自力更生、艰苦奋斗，勇于登攀；有条件要上，没有条件创造条件也要上！因为对于中国人发展高端产业，没有任何外国人是乐见其成的，只能靠我们自己。
				</p>
				<img src="../images/h2.jpg" />
				<p>
					这件事情告诉我们一个深刻的道理，想要完成中国人自己的核心大项目，就必须要用中国人自己的产品，任何产品都存在缺陷和漏洞，哪怕是成功国际化高端产业。现在我们的北斗系统组网正在紧张的进行中。2020年全球覆盖的目标也要马上实现了，我们祝福北斗搭载的中国芯能够走得更远，覆盖全世界！
				</p>
			</div>
		</div>

		<div class="row news_lis">
			<div class="col-xs-12">
				<h1>相关资讯</h1>
			</div>
			<div class="col-xs-12">
				<ul>
					<li><a href="../views/news_ds.jsp"> 开发微信小程序，选择专业云服务器 <span
							class="pull-right">2017-3-31</span>

					</a></li>
					<li><a href="../views/news_ds.jsp"> 开发微信小程序，选择专业云服务器 <span
							class="pull-right">2017-3-31</span>

					</a></li>
					<li><a href="../views/news_ds.jsp"> 开发微信小程序，选择专业云服务器 <span
							class="pull-right">2017-3-31</span>

					</a></li>
					<li><a href="../views/news_ds.jsp"> 开发微信小程序，选择专业云服务器 <span
							class="pull-right">2017-3-31</span>

					</a></li>
					<li><a href="../views/news_ds.jsp"> 开发微信小程序，选择专业云服务器 <span
							class="pull-right">2017-3-31</span>

					</a></li>
				</ul>
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
<script>
	$(".play").mouseover(function() {
		$(".play_box").addClass("fadeInUp");
	});
</script>
</html>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=gbk" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>云·协作  || 欢迎</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/cloudy.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
   		<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
   		<link href="css/screen.css" media="screen, projection" rel="stylesheet" type="text/css" />
		<script src="js/modernizr.custom.28468.js"></script>
		<link rel="stylesheet" type="text/css" href="css/simptip-mini.css" media="screen,projection" />
		<meta charset="utf-8">
		<script type="text/javascript" src="js/jquery.js"></script>
	</head>
	<body>
			<div class="header" id="home">
				<div class="wrap">
				<div class="top-header">
					<div class="logo">
						<a><span> </span>云协作</a>
					</div>
					<div class="top-nav">
						<ul>
							<li class="active"><a href="#home" class="scroll">主页</a></li>
							<li><a href="#services" class="scroll">介绍</a></li>
							<li><a href="#portfolio" class="scroll">功能</a></li>
							<li><a href="#blog" class="scroll">小组</a></li>
							<li><a href="#contact" class="scroll">联系我们</a></li>
							<li><a class="scroll"  onclick="window.location='login.jsp';">登录/注册</a></li>
							<div class="clear"> </div>
						</ul>
					</div>
					<div class="clear"> </div>
				</div>
			<div id="da-slider" class="da-slider">
					  <div id="intro" class="da-slide">
					    <div class="da-title">
					      <h3>功能1</h3>
					    </div>
					    <div class="da-img">
					      <img src="images/slider-pic1.png" alt="Drupal Powered" title="Presenting the Drupalien" />
					    </div>
					  </div>
					  <div id="user-experience" class="da-slide">
					   <div class="da-title">
					   <h3>功能2</h3>
					    </div>
					     <div class="da-img">
					      <img src="images/slider-pic2.png" alt="Drupal Powered" title="Presenting the Drupalien" />
					    </div>
					  </div>
					  <div id="design" class="da-slide">
					   <div class="da-title">
					    <h3>功能3</h3>
					    </div>
					     <div class="da-img">
					      <img src="images/slider-pic3.png" alt="Drupal Powered" title="Presenting the Drupalien" />
					    </div>
					  </div>
					  <div>
					  </div>
					</div>
					<script src="js/jquery-3.2.0.min.js"></script>
					<script src="js/jquery.cslider.js"></script>
					<script>
					//jQuery(document).ready(function() {
					$('#da-slider').cslider({
					  autoplay : true,
					  interval: 3000,
					  bgincrement : 10
					});
					//});
					</script>
		<!----start-content-slider---->
			</div>
		</div>
		<!---End-header----->
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			<!---start-top-grids---->
				<div class="top-service-grids" id="services">
					<div class="top-service-grid">
						<a><img src="images/top-grid-pic1.png" alt="" /></a>
						<a><span>异地协作</span></a>
						<p>虽身处异地，但打开电脑即可协作办公。云上的世界，你我共享。</p>
					</div>
					<div class="top-service-grid">
						<a><img src="images/top-grid-pic2.png" alt="" /></a>
						<a><span>奇思妙想</span></a>
						<p>人人都可以是项目经理，创建项目吸引小伙伴！</p>
					</div>
					<div class="top-service-grid">
						<a><img src="images/top-grid-pic4.png" alt="" /></a>
						<a><span>任务指派</span></a>
						<p>完善的任务机制让分工更明确，开发效率更高。</p>
					</div>
					<div class="clear"> </div>
				</div>
			<!---End-top-grids---->
			</div>
			<div class="blog" id="portfolio">
				<div class="wrap">
					<div class="blog-grids">
						<div class="blog-grid blog-grid1">
							<div class="blog-grid-left">
								<span style="width: 680px;background: url(images/project1.png) no-repeat;"> </span>
							</div>
							<div class="blog-grid-right">
								<h3><a>创建项目</a></h3>
								<p>简单方便，随时随地</p>
								<a class="blogbtng popup-with-zoom-anim">更多</a>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="blog-grid2">
							<div class="blog-grid2-left" style="width: 130px !important;">
								<h3><a>任务委派</a></h3>
								<p>分工明确，积沙成塔。</p>
								<a class="blogbtnb popup-with-zoom-anim" >更多</a>
							</div>
							<div class="blog-grid2-right" style="width: auto !important;">
								<span style="width: 947px;background: url(images/function2.png) no-repeat;"> </span>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="blog-grid blog-grid3">
							<div class="blog-grid-left" >
								<span style="width: 840px;background: url(images/function1.png) no-repeat;"> </span>
							</div>
							<div class="blog-grid-right">
								<h3><a>上传文档</a></h3>
								<p>文档推动项目进程</p>
								<a class="blogbtng popup-with-zoom-anim" >更多</a>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="blog-grid blog-grid4">
							<div class="blog-grid2-left" style="width: 260px !important;margin-top: 300px;">
								<h3><a>时间轴</a></h3>
								<p>项目进程，一目了然。</p>
								<a class="blogbtnb popup-with-zoom-anim" >更多</a>
							</div>
							<div class="blog-grid2-right" style="width: auto !important;">
								<span style="width: 840px;height: 698px;background: url(images/time.png) no-repeat;"> </span>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="clear"> </div>
					 </div>
				</div>
			</div>
			<!--- End-blog----->
			<!---start-meet-our-team---->
			<div class="team" id="blog">
				<div class="wrap">
					<div class="team-head">
						<h3>我们的开发小组</h3>
						<p></p>
					</div>
					<div class="team-members">
						<div class="team-member">
							<span><a href="#"> </a></span>
							<h4><a href="#">怯金阁</a></h4>
						    <label>前端开发</label>
							<p>负责页面设计，前端代码编写</p>
						</div>
						<div class="team-member">
							<span><a href="#"> </a></span>
							<h4><a href="#">周文亮</a></h4>
						   <label>后端开发</label>
							<p>负责后端代码编写</p>
						</div>
						<div class="team-member">
							<span><a href="#"> </a></span>
							<h4><a href="#">余思敏</a></h4>
						   <label>后端开发</label>
							<p>负责后端代码编写</p>
						</div>
						<div class="clear"> </div>
						<div class="clear"> </div>
					</div>
				</div>
			</div>
			<div class="contact" id="contact">
				<div class="wrap">
				<div class="contact-head">
					<h3>联系我们</h3>
					<p>在使用过程中若遇到问题，请及时与我们联系</p>	
				</div>
				<div class="contatct-form">
					<form>
						<input type="text" value="名字 :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '名字 :';}">
						<input type="text" value="邮箱 :" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱 :';}">
						<textarea rows="2" cols="70" onfocus="if(this.value == 'Message :') this.value='';" onblur="if(this.value == '') this.value='留言 :';" >留言 :</textarea>
						<input type="submit" value="发送" />
					</form>
				</div>
			</div>
			</div>
		</div>
		<div class="footer">
			<div class="wrap">
				<div class="footer-grids">
					<div class="footer-left">
						
					</div>
					<div class="footer-right">
									<script type="text/javascript">
						$(document).ready(function() {
							$().UItoTop({ easingType: 'easeOutQuart' });
						});
					</script>
					<!----move-top-path---->
					<script type="text/javascript" src="js/move-top.js"></script>
					<script type="text/javascript" src="js/easing.js"></script>
					<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event){		
								event.preventDefault();
								$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
							});
						});
					</script>
					<!----move-top-path---->
			    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
	</body>
</html>


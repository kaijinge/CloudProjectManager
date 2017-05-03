<%@ page language="java" import="java.util.*" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>My JSP 'user.jsp' starting page</title>  
    <link href="images/cloudy.png" rel="shortcut icon" />  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
</head>
<body>
	<div class="wrap">
		<div class="top">
			<div class="icon_box">
				<img src="images/cloudy.png" class="hvr-bounce-in"/>
			</div>
			<div class="user-name"> 
				${username} 
			</div>
			<div class="avatar-setting">
				<div class="avatar-box hvr-shrink">
					<img src="${url }">
				</div>
				<div class="avatar-box-options hidden">
					<a href="account">
					<div class="avatar-box-option">
						修改信息
					</div>
					</a>
					<a href="quit">
					<div class="avatar-box-option">
					 退出
					</div>
					</a>
				</div>
			</div>
			<div class="quick_add">
				<div class="quick_add_icon_box hvr-pop">
					<i class="glyphicon glyphicon-plus"></i>
				</div>
				<div class="quick_add_list_box hidden">
				<a href="create.jsp">
					<div class="quick_add_list">
						<span class="glyphicon glyphicon-file"></span>
						项目
					</div>
				</a>
				<a href="QueryAllMyTaskServlet">
					<div class="quick_add_list">
						<span class="glyphicon glyphicon-tasks"></span>
						任务
					</div>
				</a>
				<a href="queryallfriend">
					<div class="quick_add_list">
						<span class="glyphicon glyphicon-user"></span>
						好友
					</div>
				</a>
				<a href="querychat">
					<div class="quick_add_list">
						<span class="glyphicon glyphicon-envelope"></span>
						私信
					</div>
				</a>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="nav">
				<div class="nav-item" id="nav-item1">
					<span class="glyphicon glyphicon-home home"></span>
					<span class="nav-name">主页</span>
				</div>
				<div class="nav-item" id="nav-item2">
					<span class="glyphicon glyphicon-file file"></span>
					<span class="nav-name">项目</span>
				</div>
				<div class="nav-item" id="nav-item4">
					<span class="glyphicon glyphicon-tasks tasks"></span>
					<span class="nav-name">任务</span>
				</div>
				<div class="nav-item" id="nav-item5">
					<span class="glyphicon glyphicon-user user"></span>
					<span class="nav-name">好友</span>
				</div>
				<div class="nav-item" id="nav-item6">
					<span class="glyphicon glyphicon-envelope envelope"></span>
					<span class="nav-name">私信</span>
				</div>
				<div class="nav-item" id="nav-item7">
					<span class="glyphicon glyphicon-bell bell"></span>
					<span class="nav-name">通知</span>
				</div>
				<div class="nav-item" id="nav-item8">
					<span class="glyphicon glyphicon-tower tower"></span>
					<span class="nav-name">账户</span>
				</div>
			</div>
			<div class="guide">
				<canvas id="myCanvas" style="display:block;margin:auto;background:#ecf0f1;"></canvas>
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
	<script>
		$(document).ready(function(){
			$(".quick_add_icon_box").hover(function(){
				$(".quick_add_list_box").removeClass("hidden");
			},function(){
				$(".quick_add_list_box").addClass("hidden");
			});
			$(".quick_add_list_box").hover(function(){
				$(this).removeClass("hidden");
			},function(){
				$(this).addClass("hidden");
			});
			$(".avatar-box img").hover(function(){
				$(this).addClass("box_shadow");
			},function(){
				$(this).removeClass("box_shadow");
			});
		});
	</script>
	<script>
	var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");
var mask;

var pointCount = 500;
var str = "Hello.";
var fontStr = "bold 128pt Helvetica Neue, Helvetica, Arial, sans-serif";

ctx.font = fontStr;
ctx.textAlign = "center";
c.width = ctx.measureText(str).width;
c.height = 128; // Set to font size

var whitePixels = [];
var points = [];
var point = function(x,y,vx,vy){
  this.x = x;
  this.y = y;
  this.vx = vx || 1;
  this.vy = vy || 1;
}
point.prototype.update = function() {
  ctx.beginPath();
  ctx.fillStyle = "#95a5a6";
  ctx.arc(this.x,this.y,1,0,2*Math.PI);
  ctx.fill();
  ctx.closePath();
  
  // Change direction if running into black pixel
  if (this.x+this.vx >= c.width || this.x+this.vx < 0 || mask.data[coordsToI(this.x+this.vx, this.y, mask.width)] != 255) {
    this.vx *= -1;
    this.x += this.vx*2;
  }
  if (this.y+this.vy >= c.height || this.y+this.vy < 0 || mask.data[coordsToI(this.x, this.y+this.vy, mask.width)] != 255) {
    this.vy *= -1;
    this.y += this.vy*2;
  }
  
  for (var k = 0, m = points.length; k<m; k++) {
    if (points[k]===this) continue;
    
    var d = Math.sqrt(Math.pow(this.x-points[k].x,2)+Math.pow(this.y-points[k].y,2));
    if (d < 5) {
      ctx.lineWidth = .2;
      ctx.beginPath();
      ctx.moveTo(this.x,this.y);
      ctx.lineTo(points[k].x,points[k].y);
      ctx.stroke();
    }
    if (d < 20) {
      ctx.lineWidth = .1;
      ctx.beginPath();
      ctx.moveTo(this.x,this.y);
      ctx.lineTo(points[k].x,points[k].y);
      ctx.stroke();
    }
  }
  
  this.x += this.vx;
  this.y += this.vy;
}

function loop() {
  ctx.clearRect(0,0,c.width,c.height);
  for (var k = 0, m = points.length; k < m; k++) {
    points[k].update();
  }
}

function init() {
  // Draw text
  ctx.beginPath();
  ctx.fillStyle = "#000";
  ctx.rect(0,0,c.width,c.height);
  ctx.fill();
  ctx.font = fontStr;
  ctx.textAlign = "left";
  ctx.fillStyle = "#fff";
  ctx.fillText(str,0,c.height/2+(c.height / 2));
  ctx.closePath();
  
  // Save mask
  mask = ctx.getImageData(0,0,c.width,c.height);
  
  // Draw background
  ctx.clearRect(0,0,c.width,c.height);
  
  // Save all white pixels in an array
  for (var i = 0; i < mask.data.length; i += 4) {
    if (mask.data[i] == 255 && mask.data[i+1] == 255 && mask.data[i+2] == 255 && mask.data[i+3] == 255) {
      whitePixels.push([iToX(i,mask.width),iToY(i,mask.width)]);
    }
  }
  
  for (var k = 0; k < pointCount; k++) {
    addPoint();
  }
}

function addPoint() {
  var spawn = whitePixels[Math.floor(Math.random()*whitePixels.length)];
  
  var p = new point(spawn[0],spawn[1], Math.floor(Math.random()*2-1), Math.floor(Math.random()*2-1));
  points.push(p);
}

function iToX(i,w) {
  return ((i%(4*w))/4);
}
function iToY(i,w) {
  return (Math.floor(i/(4*w)));
}
function coordsToI(x,y,w) {
  return ((mask.width*y)+x)*4;

}

setInterval(loop,50);
init();
	</script>
</body>

  
</html>

<%@ page language="java" import="java.util.*" contentType="text/html;charset=gbk" pageEncoding="UTF-8"%>
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
    
    <title>云·协作  || 登录</title>
    <link href="images/cloudy.png" rel="shortcut icon" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
	<script src="js/jquery.js"></script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
 
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default',        
			    width: 'auto', 
			    fit: true   
			});
		});
				
	</script>	
  </head>
  
  <body>
<!--[if IE]>
<link href="css/style_ie.css" rel="stylesheet" type="text/css" media="all"/>
<div id="zh-ie6-mask">
	<div class="oops">
		<img src="images/cloudy.png" alt="oops">
	</div>
	<p class="warning">您正在使用的浏览器版本过低，将不能正常浏览和使用云·协作。</p>
	<div class="browser">
		<a href="http://windows.microsoft.com/zh-CN/internet-explorer/downloads/ie">
			<img src="images/Firefox.png" alt="firefox"><br>
			使用 Fire fox 浏览器
		</a>
		<a href="http://sw.bos.baidu.com/sw-search-sp/software/1b5bc4ffa7d9b/ChromeStandalone_57.0.2987.133_Setup.exe">
			<img src="images/chrome.png" alt="chrome"><br> 
			使用 Google Chrome 浏览器
		</a>
		<a href="http://se.360.cn/"><img src="images/360.png" alt="360"><br> 
		使用 360 浏览器
		</a>
	</div>
</div>
<![endif]-->
  
<div class="login_wrap">
   <div class="head">
		<div class="logo">
			<div class="logo-top">
				<h1>云协作</h1>
			</div>
			<div class="logo-bottom">
				<section class="sky-form">									
					<label class="radio"><input type="radio" name="radio" checked=""><i></i>开发周期清晰明了</label>
					<label class="radio"><input type="radio" name="radio"><i></i>分工明细共同协作</label>										
					<label class="radio"><input type="radio" name="radio"><i></i>云上的日子你我共享</label>
				</section>
			</div>
		</div>		
		<div class="login">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>登录</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><label>/</label><span>注册</span></li>
						<div class="clearfix"></div>
					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="login-top">
								<form action="login" id="loginform" method="get">
									<input type="text" class="name" name="USERNAME" placeholder="用户名" required=""/>
									<input type="password" class="password" name="PASSWORD" placeholder="密码" required=""/>	
									<div style="width:100%;height:30px;margin-top:15px">
									${error}
									</div>
									<div class="login-bottom">
										<div class="submit">
											<input type="submit" value="登录"/>
											<input type="reset" value="重置"/>
										</div>
									</div>
										
									
								</form>
							</div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="login-top">
								<form action="reg" id="regform" method="get">
									<input type="text" id="username" class="name active" name="USERNAME" placeholder="请填写用户名"  onblur="ckUsername();"/>
									<p id="msg"></p>
									<input type="password" id="password" class="password" name="PASSWORD" placeholder="填写密码" />		
									<input type="password" id="repwd" class="password" name="REPWD" placeholder="确认密码" />		
									<div style="width:100%;height:30px;margin-top:15px">
									</div>
									<div class="login-bottom">
										<div class="submit">
											<input type="submit" value="注册"/>
											<input type="reset" value="重置"/>
										</div>
									</div>
								</form>	
							</div>
							
						</div>							
					</div>	
				</div>
			</div>	
		</div>	
		<div class="clear"></div>
		</div>
	</div>	
	<script src="js/jquery.validate.js"></script>
    <script src="js/messages_zh.js"></script>
	<script type="text/javascript">
	
	var xmlHttp;

	function createXMLHttpRequest() {
		// IE
	    if (window.ActiveXObject) {
	        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	    } 
	    // FireFox
	    else if (window.XMLHttpRequest) {
	        xmlHttp = new XMLHttpRequest();
	    }
	}
	    
	function ckUsername() {
		var username = document.getElementById("username").value;
		if(username.length>=3){
			//alert("请输入用户名");
			//username.focus();
		
		
		createXMLHttpRequest();
		//alert(username);
		var url = "yz?add_name="+username;
	    xmlHttp.onreadystatechange = callback;
	    xmlHttp.open("GET", url, true);
	    xmlHttp.send(null); 
		}
	}
	
	function callback() {
	    if(xmlHttp.readyState == 4) {
	        if(xmlHttp.status == 200) {
	        
	        	var message = xmlHttp.responseText;
	        	setMessage(message);
	        }
	    }
	}
	
	function setMessage(message) {
		var userMsg = document.getElementById("msg");
		var msgText = "";
		if(message=="invalid") {
			userMsg.style.color="red";
			msgText = '此用户名已被使用！';
		} else if(message=="valid") {
			userMsg.style.color="green";
			msgText = '恭喜您，此用户名可用。';
			flag = true;
		}
		userMsg.innerHTML = msgText;
	}
</script>
<script src="js/form_validate.js"></script>
  </body>
</html>

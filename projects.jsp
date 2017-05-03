<%@ page language="java" import="java.util.*" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>云·协作  || 项目列表</title>    
    <link href="images/cloudy.png" rel="shortcut icon" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
  </head>
  
  <script type="text/javascript" src="http://cdn.goeasy.io/goeasy.js"></script>
  <script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <script type="text/javascript">
	window.onload = function(){
		var tu_id="${tu_id}";
		//创建goEasy对象
		var goEasy = new GoEasy( {
			appkey : "BC-428ba2c2905240d5a35f02dfefaf6e99"
		});
		//订阅某一个频道。只有页面订阅了指定频道，服务器在向某个频道推送数据时，页面才可以收到推送消息。
		goEasy.subscribe({
			channel: "privateletter"+tu_id,
			onMessage: function (message) {
				alert(message.content);
			}
		});
		//发送消息
				//goEasy.publish({
					// channel: "privateletter"+tu_id,
					// message: "通告：你有一条私信",
			//});
			//alert("privateletter"+tu_id);
		}
		
  </script>
  
  
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
					<img src="${url}">
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
					<span class="glyphicon glyphicon-home"></span>
					<span class="nav-name">主页</span>
				</div>
				<div class="nav-item" id="nav-item2">
					<span class="glyphicon glyphicon-file"></span>
					<span class="nav-name">项目</span>
				</div>
				<div class="nav-item" id="nav-item4">
					<span class="glyphicon glyphicon-tasks"></span>
					<span class="nav-name">任务</span>
				</div>
				<div class="nav-item" id="nav-item5">
					<span class="glyphicon glyphicon-user"></span>
					<span class="nav-name">好友</span>
				</div>
				<div class="nav-item" id="nav-item6">
					<span class="glyphicon glyphicon-envelope"></span>
					<span class="nav-name">私信</span>
				</div>
				<div class="nav-item" id="nav-item7">
					<span class="glyphicon glyphicon-bell"></span>
					<span class="nav-name">通知</span>
				</div>
				<div class="nav-item" id="nav-item8">
					<span class="glyphicon glyphicon-tower"></span>
					<span class="nav-name">账户</span>
				</div>
			</div>
			<div class="projectnavcontainer">
				<div class="ProjectMenu">
		    		<p>
		    			项目
			    		<a href="create.jsp">
			    			<span class="glyphicon glyphicon-plus hvr-pop" id="create" style="float:right;font-size:15px;margin-top:3px;"></span>
			    		</a>
		    		</p>
		    		<p>按我创建的、参与的和归档的项目分类</p>
		   		</div>
		    	<div class="ProjectMenuNav">
		    		<a class="AllMenu hvr-shadow-radial" href="queryallproject">
		    			<span class="glyphicon glyphicon-folder-close"></span>&nbsp;
		    			<span>所有项目 (${projectlistsize})</span>
		    		</a>
		    		<a class="CreatedMenu hvr-shadow-radial" href="rname?rname=1">
		    			<span class="glyphicon glyphicon-folder-open"></span>&nbsp;
		    			<span>我创建的 (${createsize})</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" href="rname?rname=2">
		    			<span class="glyphicon glyphicon-print"></span>&nbsp;
		    			<span>我参与的 (${takepartsize})</span>
		    		</a>
		    	</div>
			</div>
			<div class="MyProject" id="MyProject">
				<div class="MyProjectHeader">
					<span>所有项目（${projectlistsize}）</span>
				</div>
				<div class="MyProjectList">
					<c:forEach  items="${projectlist}" var="a"  >
						<a class="ProjectItem" href="detail?P_ID=${a.p_id}">
							<div class="ProjectItemImage hvr-buzz-out">
								<img src="images/${fn:substring(a.p_id,fn:length(a.p_id)-1,fn:length(a.p_id))}.jpg">
							</div>
							<p>${a.pname}</p>
						</a>
					</c:forEach>
					<a class="ProjectItem" id="CreateItem" href="create.jsp">
						<div class="createANewProject hvr-float-shadow">
							<i class="glyphicon glyphicon-plus"></i>
						</div>
						<p>创建一个新项目</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
</body>

</html>

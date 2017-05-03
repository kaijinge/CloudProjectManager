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
	<meta charset="utf-8">
	<title>云·协作  || 任务</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
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
			<div class="projectnavcontainer">
				<div class="TaskMenu">
		    		<p style="font-size: 18px;font-weight:bold;">
		    		任务中心
		    		</p>
		    	</div>
		    	<div class="TaskMenuNav">
		    	<a href="QueryAllMyTaskServlet">
		    		<div class="AllTask hvr-shadow-radial" style="text-decoration:none;">
		    			<span class="glyphicon glyphicon-tasks glyphicon-tasks1"></span>&nbsp;
		    			<span>所有任务</span>
		    		</div>
		    		</a>
		    		<a href="QueryMyCreateTaskServlet">
		    		<div class="CreatedTask hvr-shadow-radial" style="text-decoration:none;">
		    			<span class="glyphicon glyphicon-move"></span>&nbsp;
		    			<span>我创建的</span>
		    		</div>
		    		</a>
		    		<a href="querymytask">
		    		<div class="JoinedTask hvr-shadow-radial" style="text-decoration:none;">
		    			<span class="glyphicon glyphicon-check"></span>&nbsp;
		    			<span>我的任务</span>
		    		</div>
		    		</a>
		    	</div>
			</div>
			<div class="Task_Table">
		  		<div class="TaskTableHeader">
		  			<div class="searchBox">
		  			<form action="QueryTaskByNameServlet" >
		  				<span class="glyphicon glyphicon-search"></span>
		  				<input type="text" name="taskname" class="searchBoxInput"/>
		  				</form>
		  			</div>
		  			<div class="dropdown filterexecutor">
		  				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">时间段
        					<span class="caret"></span>
    					</button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=5&TIME=0">近一个月</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=5&TIME=1">近三个月</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=5&TIME=2">近半年</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=5&TIME=3">近一年</a>
					        </li>
					    </ul>
		  			</div>
		  			<div class="dropdown filterTag">
		  				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">标签
        					<span class="caret"></span>
    					</button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=4&TAGS=bug">bug修复</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=4&TAGS=功能">功能</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=4&TAGS=文档">文档</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=4&TAGS=测试">测试</a>
					        </li>
					    </ul>
		  			</div>
		  			<div class="dropdown filterDegree">
		  				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">紧急程度
        					<span class="caret"></span>
    					</button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=3&URGENCY=十万火急">十万火急</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=3&URGENCY=优先处理">优先处理</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=3&URGENCY=正常处理">正常处理</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=3&URGENCY=有空再说">有空再说</a>
					        </li>
					    </ul>
		  			</div>
		  			<div class="dropdown filterStatus">
		  				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">状态
        					<span class="caret"></span>
    					</button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=2&STATUS=0">未完成</a>
					        </li>
					        <li role="presentation">
					            <a role="menuitem" tabindex="-1" href="QueryTaskKindServlet?kind=2&STATUS=1">已完成</a>
					        </li>
					    </ul>
		  			</div>
		  			<div class="dropdown filterProject">
		  				<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">项目
        					<span class="caret"></span>
    					</button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					    <c:forEach  items="${projectlist}" var="a"  >
					    	<li role="presentation">
							<a class="ProjectItem" href="QueryTaskKindServlet?kind=1&P_ID=${a.p_id}">
								<p>${a.pname}</p>
							</a>
							</li>
					    </c:forEach>
					    </ul>
		  			</div>
		  		</div>
		  		<div class="TaskTableBody">
		  			<div class="TaskTableBodyheader">
		  				<span>${MyTasklistsize}</span>
		  				<span>个任务</span>
		  			</div>
		  				<table class="table table-hover">
					<thead>
						<tr>
							<th>任务名</th>
							<th>创建日期</th>
							<th>截至日期</th>
							<th>紧急度</th>
							<th>标签</th>
							<th>执行人</th>
							<th>创建人</th>
							<th>删除</th>
							<th>详情</th>
							<th>设置完成</th>
						</tr>
					</thead>
					<tbody>
					   	<c:forEach  items="${MyTasklist}" var="c">
							<c:if test="${c.status==0}">
								<tr>
									<td>${c.tname}</td>
									<td>${fn:substring(c.startdate,0,16)}</td>
									<td>${fn:substring(c.enddate,0,11)}</td>
									<td>${c.urgency}</td>
									<td>${c.tags}</td>
									<td>${c.member}</td>
									<td>${c.username}</td>
									<td style="display:block;">
										<a href="deletetask?ta_id=${c.ta_id}" style="margin-top: -23px;display: -webkit-inline-box;">
											<i class="glyphicon glyphicon-minus" style="line-height: 67px;margin-left: 8px;height: 25px;" id="remove_a_task">
											</i>
					  					</a>
									</td>
									<td><button type="button" class="btn btn-success"  
								data-container="body" data-toggle="popover" data-placement="bottom" 
								data-content="${c.description}">
								详情
							    </button></td>
									<td>
										<a href="settaskstatus?ta_id=${c.ta_id}">
											<span class="glyphicon glyphicon-unchecked one_task_check" style="line-height: 5px;" title="点击标记已完成">
											</span>
										</a>
									</td>
								</tr>
							</c:if>	
							<c:if test="${c.status==1}">
								<tr style="text-decoration:line-through;">
									<td>${c.tname}</td>
									<td>${fn:substring(c.startdate,0,16)}</td>
									<td>${fn:substring(c.enddate,0,11)}</td>
								
									<td>${c.urgency}</td>
									<td>${c.tags}</td>
									<td>${c.member}</td>
									<td>${c.username}</td>
									<td style="display:block;">
										<a href="deletetask?ta_id=${c.ta_id}" style="margin-top: -23px;display: -webkit-inline-box;">
											<i class="glyphicon glyphicon-minus" style="line-height: 67px;margin-left: 8px;height: 25px;" id="remove_a_task">
											</i>
					  					</a>
									</td>
									<td><button type="button" class="btn btn-success"  
								data-container="body" data-toggle="popover" data-placement="bottom" 
								data-content="${c.description}">
								详情
							    </button></td>
									<td>		
				        	<span class="glyphicon glyphicon-check one_task_check" style="line-height: 5px;">
								</span>
									</td>
								</tr>
							</c:if>
							</c:forEach>
					</tbody>
			</table>
		  		</div>
		  	</div>
	  	</div>
  	</div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
	<script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script>
	$(function() {
	$("[data-toggle='popover']").popover();
	$(".one_task_check").click(function(){
    		$(this).removeClass("glyphicon-unchecked").addClass("glyphicon-check").siblings("p").css("text-decoration","line-through");
    	});
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
	});
	</script>
</body>
</html>

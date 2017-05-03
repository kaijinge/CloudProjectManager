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
	<meta charset="utf-8">
	<link href="images/cloudy.png" rel="shortcut icon" />
	<title>云·协作  || 私信</title>
	<!--<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css">-->
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<link rel="stylesheet" href="layui/css/layui.css">
	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<div class="projectdetailnavcontainer">
		<div class="friend-menu">
    		<p style="font-size: 18px;font-weight:bold;">
    		私信
    		</p>
    		<p style="font-size: 10px;">查看好友发来的私信</p>
   		</div>
    	<div class="friend-menu-nav">
    		<a class="friends ">
    			<i class="glyphicon glyphicon-star" style="margin:22px 5px 5px 23px;font-size:17px;"></i>&nbsp;
    			<span>所有 </span>
    		</a>
    		<a class="friends ">
    			<i class="glyphicon glyphicon-heart" style="margin:22px 5px 5px 23px;font-size:17px;"></i>&nbsp;
    			<span>未读 </span>
    		</a>
    	</div>
	</div>
	<div class="chat-box">
		<input type="button" value="发送私信" id="message_to_him" style="float:right;width:100px;">
		<a href="deletechat"><input type="button" value="清空" id="delete_all_message" style="float:right;width: 65px;"></a>
			<div class="panel-group" id="accordion" style="width: 82%;margin-top: 50px;min-width:460px;">
				<c:forEach  items="${chatlist}" var="c">
				    <div class="panel panel-default">
				        <div class="panel-heading">
				            <h4 class="panel-title">
				                <a data-toggle="collapse" data-parent="#accordion" 
				                href="#collapseOne" style="display:block;height:50px;">
				                	<div class="ProjectAddMember_table_list_avatar">
						    			<img src="${c.url }"/>
						    		</div>
						    		<p style="line-height:50px;">与${c.username}的私信</p>
				                </a>
				            </h4>
				        </div>
				        <div id="collapseOne" class="panel-collapse collapse in">
				            <div class="panel-body">
				                <div style="width:100%;">
				                	<span style="font-weight:bold;">${c.username}</span>：${c.description}</span><br/><span style="font-size: 9px;">${c.pldate}</span>
				                </div>
				            </div>
				        </div>
				    </div>
			    </c:forEach>
			</div>
	</div>
	<div class="message_to_him hidden" style="top: 100px !important;">
	    <form action="privateletter">
	    	<div class="create_discuss_input_title">
				<p style="margin-left:200px;">
					给
					<select name="NAME">
						<c:forEach  items="${friendlist}" var="f">
							<option>${f.username}</option>
						</c:forEach>
					</select>发送私信
				</p>
			</div>
			<span class="glyphicon glyphicon-remove hvr-pop" style="position: absolute;right: 8px;font-size: 21px;top: 8px;" id="closemessage"></span>
			<div style="margin-bottom: 20px; width: 500px;">
			  <textarea class="layui-textarea" id="LAY_demo2" name="DESCRIPTION"></textarea>
			</div>
			<input type="submit" value="发送" class="btn btn-success" style="right: 20px;position: absolute;">
		</form>
	</div>
	<div class="mask hidden" style="top:0 !important;">
	</div>
</div>
	<!-- <script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script> -->
	<!--<script type="text/javascript" src="js/jquery.js"></script>-->
	<script type="text/javascript" src="js/script.js"></script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		$(document).ready(function(){
			$(".avatar-box").hover(function(){
				$(".avatar-box-options").removeClass("hidden");
			},function(){
				$(".avatar-box-options").addClass("hidden");
			});
			$("#message_to_him").click(function(){
				$(".mask,.message_to_him").removeClass("hidden");
			});
			$("#closemessage").click(function(){
				$(".mask,.message_to_him").addClass("hidden");
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
		})
	</script>
	<script>
layui.use('layedit', function(){
  var layedit = layui.layedit
  ,$ = layui.jquery;
  
  //构建一个默认的编辑器
  var index = layedit.build('LAY_demo2', {
    tool: ['face', 'left', 'center', 'right','strong','italic','underline','del']
    ,height: 250
  })
  
  //自定义工具栏
});
</script>
</body>
</html>

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
	<meta charset="utf-8">
	<title>云·协作  || 账户</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
	<link rel="stylesheet" href="css/amazeui.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/amazeui.cropper.css">
	<link rel="stylesheet" href="css/custom_up_img.css">
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
			<div class="account-setting">
				<c:forEach  items="${account}" var="a">
					<div class="account-avatar hvr-shrink" id="up-img-touch">
						<img src="${a.url}" class="am-circle" alt="点击图片上传" data-am-popover="{content: '点击上传', trigger: 'hover focus'}">
					</div>
					<form class="account-details" action="updateaccount" id="account-details">
						<div class="account-username">
							用户名：
							<input type="text" name="USERNAME" value="${a.username}" readonly>
						</div>
						<div class="account-password">
							密码：
							<input type="password" name="PASSWORD" value="${a.password}" required>
						</div>
						<div class="account-realname">
							真实姓名：
							<input type="text" name="REALNAME" value="${a.realname}">
						</div>
						<div class="account-sex">
							性别：
							<select class="account-sex-selector" name="SEX" value="${a.realname}">
							    <option>${a.sex}</option>
								<option>男</option>
								<option>女</option>
							</select>
						</div>
						<div class="account-tel">
							TEL：
							<input type="text" name="TEL" value="${a.tel}" >
						</div>
						<div class="account-birthday">
							出生日期：
							<input type="text" name="BIRTHDAY" value="${a.birthday}"  id="datepicker">
						</div>
						<div class="account-email">
							Email：
							<input type="email" name="EMAIL" value="${a.email}" >
						
						</div>
						<div class="account-location">
							所在地：
							<input type="text" name="LOC" value="${a.loc}">
						</div>
						<div class="account-signature" >
							个性签名：
							<input type="text" name="DESCRIPTION" value="${a.description}">
						</div>
						<input type="submit" name="" value="提交更改" class="account-modify submit">
					</form>
				</c:forEach>
				<div>
					<a style="text-align: center; display: block;"  id="pic"></a>
				</div>
		
				<!--图片上传框-->
				<div class="am-modal am-modal-no-btn up-frame-bj " tabindex="-1" id="doc-modal-1">
					<div class="am-modal-dialog up-frame-parent up-frame-radius">
						<div class="am-modal-hd up-frame-header">
					   		<label>修改头像</label>
					  		<a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
						</div>
						<div class="am-modal-bd  up-frame-body">
					  		<div class="am-g am-fl">
								<div class="am-form-group am-form-file">
						  			<div class="am-fl">
										<button type="button" class="am-btn am-btn-default am-btn-sm">
							  				<i class="am-icon-cloud-upload"></i> 
							  				选择要上传的文件
							  			</button>
						  			</div>
								  <form method="post" action="UploadUserImageServlet" enctype="multipart/form-data" id="myform">
								  	<input type="file" id="inputImage">
								  </form>
								</div>
					  		</div>
							<div class="am-g am-fl" >
								<div class="up-pre-before up-frame-radius">
									<img alt="" src="" id="image" >
								</div>
								<div class="up-pre-after up-frame-radius">
								</div>
							</div>
					  
							<div class="am-g am-fl">
								<div class="up-control-btns">
									<span class="am-icon-rotate-left"  onclick="rotateimgleft()"></span>
									<span class="am-icon-rotate-right" onclick="rotateimgright()"></span>
									<span class="am-icon-check" id="up-btn-ok" url="UploadUserImageServlet"></span>
								</div>
							</div>
						</div>
				  	</div>
				</div>
		
				<!--加载框-->
				<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
					<div class="am-modal-dialog">
						<div class="am-modal-hd">正在上传...</div>
						<div class="am-modal-bd">
						  <span class="am-icon-spinner am-icon-spin"></span>
						</div>
				  	</div>
				</div>
		
				<!--警告框-->
				<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
					<div class="am-modal-dialog">
						<div class="am-modal-hd">信息</div>
						<div class="am-modal-bd"  id="alert_content">
								上传成功
						</div>
						<div class="am-modal-footer">
						  <span class="am-modal-btn" onclick="a();">确定</span>
						</div>
				  	</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/amazeui.min.js" charset="gbk"></script>
	<script src="js/cropper.min.js" charset="gbk"></script>
	<script src="js/custom_up_img.js" charset="gbk"></script>
	<script src="js/jquery.validate.js"></script>
    <script src="js/messages_zh.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/form_validate.js"></script>
	<script src="js/datepicker.js"></script>
	<script>
			function uploadimage(){
			document.getElementById("myform").submit();
			
			}
			function a(){
			
			 window.location="account";
			}
	</script>
</body>
</html>

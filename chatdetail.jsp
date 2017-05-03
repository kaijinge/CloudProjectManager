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
	<title>�ơ�Э��  || ��ϸ˽��</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="top">
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
					�޸���Ϣ
				</div>
				</a>
				<a href="quit">
				<div class="avatar-box-option">
				 �˳�
				</div>
				</a>
			</div>
		</div>
	</div>
	<div class="nav">
		<div class="nav-item" id="nav-item1">
			<span class="glyphicon glyphicon-home home"></span>
			<span class="nav-name">��ҳ</span>
		</div>
		<div class="nav-item" id="nav-item2">
			<span class="glyphicon glyphicon-file file"></span>
			<span class="nav-name">��Ŀ</span>
		</div>
		<div class="nav-item" id="nav-item4">
			<span class="glyphicon glyphicon-tasks tasks"></span>
			<span class="nav-name">����</span>
		</div>
		<div class="nav-item" id="nav-item5">
			<span class="glyphicon glyphicon-user user"></span>
			<span class="nav-name">����</span>
		</div>
		<div class="nav-item" id="nav-item6">
			<span class="glyphicon glyphicon-envelope envelope"></span>
			<span class="nav-name">˽��</span>
		</div>
		<div class="nav-item" id="nav-item7">
			<span class="glyphicon glyphicon-bell bell"></span>
			<span class="nav-name">֪ͨ</span>
		</div>
		<div class="nav-item" id="nav-item8">
			<span class="glyphicon glyphicon-tower tower"></span>
			<span class="nav-name">�˻�</span>
		</div>
	</div>
	<div class="projectdetailnavcontainer">
		<div style="width:100%;height:30px;background-color:red;">
			����
		</div>
		<div style="width:100%;height:30px;background-color:green;">
			δ��
		</div>
	</div>
	<div class="chat_list_box">
		<div class="chat_list_box_header">
			<div class="chat_list_box_header_your_message">
				<p>�Է�˵�ˣ�ʲô<p>
			</div>
			<div class="chat_list_box_header_my_message">
				<p>��˵�ˣ�ʲô</p>
			</div>
			<div class="chat_list_box_header_your_message">
				<p>�Է�˵�ˣ�ʲô<p>
			</div>
			<div class="chat_list_box_header_my_message">
				<p>��˵�ˣ�ʲô</p>
			</div>
			<div class="chat_input_box">
				<input type="text" placeholder="��������">
				<input type="button" value="����">
			</div>
		</div>
	</div>
	<div class="mask hidden">
	</div>
	<div class="message_to_him hidden">
		<p style="float:left;">��<input type="text">����˽��</p>
		<span class="glyphicon glyphicon-remove" style="float:right;" id="closemessage"></span>
		<input type="text" style="width:80%;height:200px;margin-left:10%;">
		<input type="button" value="����">
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
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
			
		})
			
	</script>
</body>
</html>

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
	<title>�ơ�Э��  || ֪ͨ</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<link rel="stylesheet" type="text/css" href="css/Font-Awesome-3.2.1/css/font-awesome.min.css">
</head>

<script type="text/javascript" src="http://cdn.goeasy.io/goeasy.js"></script>
<script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	window.onload = function(){
		var tu_id="${tu_id}";
		//����goEasy����
		var goEasy = new GoEasy( {
			appkey : "BC-428ba2c2905240d5a35f02dfefaf6e99"
		});
		//����ĳһ��Ƶ����ֻ��ҳ�涩����ָ��Ƶ��������������ĳ��Ƶ����������ʱ��ҳ��ſ����յ�������Ϣ��
		goEasy.subscribe({
			channel: "privateletter"+tu_id,
			onMessage: function (message) {
				alert(message.content);
			}
		});
		//������Ϣ
				//goEasy.publish({
					// channel: "privateletter"+tu_id,
					// message: "ͨ�棺����һ��˽��",
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
			<div class="quick_add">
				<div class="quick_add_icon_box hvr-pop">
					<i class="glyphicon glyphicon-plus"></i>
				</div>
				<div class="quick_add_list_box hidden">
					<a href="create.jsp">
						<div class="quick_add_list">
							<span class="glyphicon glyphicon-file"></span>
							��Ŀ
						</div>
					</a>
					<a href="QueryAllMyTaskServlet">
						<div class="quick_add_list">
							<span class="glyphicon glyphicon-tasks"></span>
							����
						</div>
					</a>
					<a href="queryallfriend">
						<div class="quick_add_list">
							<span class="glyphicon glyphicon-user"></span>
							����
						</div>
					</a>
					<a href="querychat">
						<div class="quick_add_list">
							<span class="glyphicon glyphicon-envelope"></span>
							˽��
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="content">
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
			<div class="notification-navigator">
				<div class="notification-menu">
		    		<p>֪ͨ����</p>
		    		<p>����չʾ����վ��������Ϣ</p>
		   		</div>
		    	<div class="notification-menu-nav">
		    		<a class="notification hvr-shadow-radial" href="querynotice">
		    			<i class="glyphicon glyphicon-briefcase"></i>
		    			<span>����֪ͨ</span>
		    		</a>
		    		<a class="notification hvr-shadow-radial" href="querynoticestatus?status=0">
		    			<i class="glyphicon glyphicon-envelope"></i>
		    			<span>
		    				δ��֪ͨ
		    			</span>
		    		</a>
		    		<a class="notification hvr-shadow-radial" href="querynoticestatus?status=1">
		    			<i class="glyphicon glyphicon-fire"></i>
		    			<span>
		    				�Ѷ�֪ͨ
		    			</span>
		    		</a>
		    	</div>
			</div>
			<div class="notification-content-box">
				<div class="notification-content-table">
					<div class="notification-content-header">
						<p>����֪ͨ ��${noticelistsize}��</p>
						<a href="setnoticestatus">
							<div class="notification-mark">
								�������Ϊ�Ѷ�
							</div>
						</a>
					</div>
					<div class="notification-content">
						<div class="notification-list">
						<c:forEach  items="${noticelist}" var="a"  >
							<c:if test="${a.status==0}">
								<div class="one-notification unread">
									<a href="SetOneNoticeStatusServlet?n_id=${a.n_id}">
										<div class="notification-type">
											<i class="glyphicon glyphicon-eye-open"></i>
										</div>
										<p class="one-notification_description">${a.description}</p>
										<p class="one-notification_date">${a.ndate}</p>
								    </a>
								</div>
							</c:if>
							<c:if test="${a.status==1}">
								<div class="one-notification">
									<div class="notification-type">
										<i class="glyphicon glyphicon-eye-open"></i>
									</div>
									<p class="one-notification_description">${a.description}</p>
									<p class="one-notification_date">${a.ndate}</p>
							 	</div>
							</c:if>
					 	</c:forEach>
					 </div>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
</body>
</html>

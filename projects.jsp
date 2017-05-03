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
    <title>�ơ�Э��  || ��Ŀ�б�</title>    
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
					<img src="${url}">
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
					<span class="glyphicon glyphicon-home"></span>
					<span class="nav-name">��ҳ</span>
				</div>
				<div class="nav-item" id="nav-item2">
					<span class="glyphicon glyphicon-file"></span>
					<span class="nav-name">��Ŀ</span>
				</div>
				<div class="nav-item" id="nav-item4">
					<span class="glyphicon glyphicon-tasks"></span>
					<span class="nav-name">����</span>
				</div>
				<div class="nav-item" id="nav-item5">
					<span class="glyphicon glyphicon-user"></span>
					<span class="nav-name">����</span>
				</div>
				<div class="nav-item" id="nav-item6">
					<span class="glyphicon glyphicon-envelope"></span>
					<span class="nav-name">˽��</span>
				</div>
				<div class="nav-item" id="nav-item7">
					<span class="glyphicon glyphicon-bell"></span>
					<span class="nav-name">֪ͨ</span>
				</div>
				<div class="nav-item" id="nav-item8">
					<span class="glyphicon glyphicon-tower"></span>
					<span class="nav-name">�˻�</span>
				</div>
			</div>
			<div class="projectnavcontainer">
				<div class="ProjectMenu">
		    		<p>
		    			��Ŀ
			    		<a href="create.jsp">
			    			<span class="glyphicon glyphicon-plus hvr-pop" id="create" style="float:right;font-size:15px;margin-top:3px;"></span>
			    		</a>
		    		</p>
		    		<p>���Ҵ����ġ�����ĺ͹鵵����Ŀ����</p>
		   		</div>
		    	<div class="ProjectMenuNav">
		    		<a class="AllMenu hvr-shadow-radial" href="queryallproject">
		    			<span class="glyphicon glyphicon-folder-close"></span>&nbsp;
		    			<span>������Ŀ (${projectlistsize})</span>
		    		</a>
		    		<a class="CreatedMenu hvr-shadow-radial" href="rname?rname=1">
		    			<span class="glyphicon glyphicon-folder-open"></span>&nbsp;
		    			<span>�Ҵ����� (${createsize})</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" href="rname?rname=2">
		    			<span class="glyphicon glyphicon-print"></span>&nbsp;
		    			<span>�Ҳ���� (${takepartsize})</span>
		    		</a>
		    	</div>
			</div>
			<div class="MyProject" id="MyProject">
				<div class="MyProjectHeader">
					<span>������Ŀ��${projectlistsize}��</span>
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
						<p>����һ������Ŀ</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
</body>

</html>

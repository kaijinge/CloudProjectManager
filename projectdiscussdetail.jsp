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
	
	<title>云·协作  || 项目讨论详细</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<link rel="stylesheet" href="layui/css/layui.css">
	<meta charset="utf-8">
</head>
<body>
	<div class="wrap">
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
					修改信息
				</div>
				</a>
				<a href="quit">
				<div class="avatar-box-option">
				 退出
				</div>
				</a>
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
		<c:forEach items="${projectinfromation}" var="a">
			<div class="ProjectDetailMenu">
	    		<p style="font-size: 18px;font-weight:bold;margin-bottom:10px;">
	    		${a.pname} / ${a.username} 
	    		</p>
	    		<p style="font-size: 10px;margin-bottom:10px;word-break: break-all;">${a.description} </p>
	   		</div>
   		</c:forEach>
    	<div class="ProjectMenuNav">
    	<a class="CreatedMenu hvr-shadow-radial" href="querytimeaxis">
    			<i class="glyphicon glyphicon-pushpin"></i>&nbsp;
    			<span>时间轴</span>
    		</a>
    		<a class="CreatedMenu" href="queryalltask">
    			<i class="glyphicon glyphicon-folder-open"></i>&nbsp;
    			<span>任务</span>
    		</a>
    		<a class="JoinedMenu" href="discuss">
    			<i class="glyphicon glyphicon-comment"></i>&nbsp;
    			<span>讨论</span>
    		</a>
    		<a class="JoinedMenu" href="codefile">
    			<i class="glyphicon glyphicon-text-height"></i>&nbsp;
    			<span>代码</span>
    		</a>
    		<a class="JoinedMenu" href="file"">
    			<i class="glyphicon glyphicon-folder-close"></i>&nbsp;
    			<span>文件</span>
    		</a>
    		<a class="JoinedMenu" id="JoinedMenu">
    			<i class="glyphicon glyphicon-headphones"></i>&nbsp;
    			<span>添加成员</span>
    		</a>
    	</div>
    	<div class="ProjectAddMember">
    		<p id="add_a_member">所有成员</p>
    		<div class="ProjectAddMember_table">
    		<c:forEach  items="${Memberlist}" var="m">
    			<div class="ProjectAddMember_table_list">
    				<div class="ProjectAddMember_table_list_avatar">
    					<img src="${m.url }"/>
    				</div>
    				<div class="ProjectAddMember_table_list_name">
    					${m.username}
    				</div>
    			</div>
    	   </c:forEach>
    		</div>
    	</div>
	</div>
	
	
  <div class="MyProject" id="MyProject" style="overflow:auto;">
  	<div class="discuss_lists">
  		<div class="discuss_list_header">
  			
  			
  			<div class="discuss_list_header_avatar_subject">
  				
  				<p>讨论题目：${dname}</p>
  			</div>
  		</div>
  		<div class="discuss_list_body">
  		 	<p>讨论描述：${information}</p>
  		</div>
  		<div class="discuss_list_bottom">
  		<c:forEach  items="${commentlist}" var="c">
  			<div class="discuss_list_bottom_one">
  			<div class="ProjectAddMember_table_list_avatar">
    					<img src="${c.url }"/>
    				</div>
  				<span style="line-height:50px;margin-left:15px;">${c.username}</span>
  				<div class="discuss_list_bottom_comment">
  					${c.message}
  				</div>
  			</div>
  	    </c:forEach>
  		</div>
  		<div class="discuss_list_yourcomment">
  		    <form action="sendmessage">
  				<div style="margin-bottom: 20px; width: 900px;">
		  			<textarea class="layui-textarea" id="LAY_demo2" name="message"></textarea>
				</div>
  				<input type="submit" value="回复">
  			</form>
  		</div>
  	</div>	 	
  </div>      
	<div class="mask hidden">
	</div>
	<div class="create_members hidden">
		<div>
			<p class="search_friend">好友列表</p>
			<span class="glyphicon glyphicon-remove" id="remove"></span>
		</div>
		<div class="search_friend_table">
		<c:forEach  items="${elsefriendlist}" var="a">
			<div class="search_friend_box_list">
				<div class="imgblock">
					<img src="${a.url}" style="width:50px;height:50px;border-radius:25px;"/>
				</div>
				<p>${a.username}</p>
				<a href="addmember?friend_id=${a.tu_id}"><input type="button" name="" value="邀请加入"></a>
			</div>
		</c:forEach>
		</div>
	</div>
	</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script src="js/script.js"></script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
	
  	$(function() {
    	$("#datepicker").datepicker();
    	$("#adddiscuss").click(function(){
    		$(".mask,.create_discuss").removeClass("hidden");
    	});
    	$("#remove_discuss").click(function(){
    		$(".mask,.create_discuss").addClass("hidden");
    	})
  	});
  </script>
  <script>
layui.use('layedit', function(){
  var layedit = layui.layedit
  ,$ = layui.jquery;
  
  //构建一个默认的编辑器
  var index = layedit.build('LAY_demo2', {
    tool: ['face', 'left', 'center', 'right','strong','italic','underline','del']
    ,height: 150
  })
  
  //自定义工具栏
});
</script>
  
</body>
</html>

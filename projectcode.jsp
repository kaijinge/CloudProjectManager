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
	
	<title>�ơ�Э��  || ��Ŀ����</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<meta charset="utf-8">
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
    			<span>ʱ����</span>
    		</a>
    		<a class="CreatedMenu hvr-shadow-radial" href="queryalltask">
    			<i class="glyphicon glyphicon-folder-open"></i>&nbsp;
    			<span>����</span>
    		</a>
    		<a class="JoinedMenu hvr-shadow-radial" href="discuss">
    			<i class="glyphicon glyphicon-comment"></i>&nbsp;
    			<span>����</span>
    		</a>
    		<a class="JoinedMenu hvr-shadow-radial" href="codefile">
    			<i class="glyphicon glyphicon-text-height"></i>&nbsp;
    			<span>����</span>
    		</a>
    		<a class="JoinedMenu hvr-shadow-radial" href="file">
    			<i class="glyphicon glyphicon-folder-close"></i>&nbsp;
    			<span>�ļ�</span>
    		</a>
    		<a class="JoinedMenu hvr-shadow-radial" id="JoinedMenu">
    			<i class="glyphicon glyphicon-headphones"></i>&nbsp;
    			<span>��ӳ�Ա</span>
    		</a>
    	</div>
    	<div class="ProjectAddMember">
    		<p id="add_a_member">���г�Ա</p>
    		<div class="ProjectAddMember_table">
    					<c:forEach  items="${Memberlist}" var="m">
    			<div class="ProjectAddMember_table_list hvr-forward">
    				<div class="ProjectAddMember_table_list_avatar">
    					<img src="${m.url }"/>
    				</div>
    				<div class="ProjectAddMember_table_list_name">
    					${m.username}
    				</div>
    				<a href="deleteMember?tu_id=${m.tu_id}">
    				<c:if test="${rname==1}">
    				<i class="glyphicon glyphicon-minus hidden" style="float:left;line-height:50px;margin-left:20px;" class="remove_a_member"></i>
    			    </c:if>
    			    </a>
    			</div>
    	   </c:forEach>
    		</div>
    	</div>
	</div>
	
  <div class="MyProject" id="MyProject">
    <div class="filespace">
            <div class="filespaceheader">
            <p>Code�ļ�</p>
            <form method="post" action="uploadcodefile" enctype="multipart/form-data" >
            <div class="fake-uploadpopup">
                               �ϴ��ļ�
            </div>
            <input type="file" name="uploadeFile" class="uploadpopup" >
            <input type="submit" class="upload" value="ȷ���ϴ�"/>
            </form>
            </div>
            <table class="filespacetable table">
             <thead>
            <tr> <th>ȫѡ</th><th>�ļ���</th><th>�ļ�ID</th><th>�ļ���С</th><th>�ϴ�ʱ��</th><th>����</th></tr>
            </thead>
            <tbody>
            <c:forEach  items="${codeFilelist}" var="a">
            <tr><th><input type="radio"/></th><th>${a.cfname}</th><th>${a.cf_id}</th><th>a</th><th>${a.username}</th><th>${a.codedate}</th>
            <th><a href="${pageContext.request.contextPath}/downcode?file=downByJsmart&cf_id=${a.cf_id}">����</a>
            <a href="deletecodefile?cf_id=${a.cf_id}">ɾ��</a></th></tr></c:forEach>
            </tbody></table></div>   	
  </div>
	</div>
	<div class="mask hidden">
	</div>
	<div class="create_members hidden">
		<div>
			<p class="search_friend">�����б�</p>
			<span class="glyphicon glyphicon-remove" id="remove"></span>
		</div>
		<div class="search_friend_table">
		<c:forEach  items="${elsefriendlist}" var="a">
			<div class="search_friend_box_list">
				<div class="imgblock">
					<img src="${a.url}" style="width:50px;height:50px;border-radius:25px;"/>
				</div>
				<p>${a.username}</p>
				<a href="addmember?friend_id=${a.tu_id}"><input type="button" name="" value="�������"></a>
			</div>
		</c:forEach>
		</div>
	</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script src="js/script.js">
  	$(function() {
    	$("#datepicker").datepicker();
  	});
  	</script>
  	<script>
	$(function() {
    	$("#datepicker").datepicker();
    	$(".ProjectAddMember_table_list").hover(function(){
    		$(this).find("i").removeClass("hidden");      
    	},function(){
    		$(this).find("i").addClass("hidden");
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

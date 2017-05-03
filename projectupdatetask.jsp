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
	
	<title>�ơ�Э��  || ��Ŀ����</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui-1.8.16.custom.css">
	<meta charset="utf-8">
	<style>
		#datepicker{
			border: 1px solid #ccc;
    		padding: 7px 0px;
    		border-radius: 3px;
    		padding-left:5px;
    		-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    		box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    		-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    		-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    		transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
		}
		#datepicker:focus{
    		border-color: #66afe9;
    		outline: 0;
    		-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
    		box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
		}
		.pbar .ui-progressbar-value {display:block !important}
		.pbar {overflow: hidden}
		.percent {position:relative;text-align: right;}
		.elapsed {position:relative;text-align: right;}
	</style>
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
			<div class="ProjectDetailMenu">
	    		<p style="font-size: 18px;font-weight:bold;">
	    			��Ŀ��
	    		</p>
	    		<p style="font-size: 10px;">��Ŀ����</p>
	   		</div>
	    	<div class="ProjectMenuNav">
	    	     <a class="CreatedMenu hvr-shadow-radial" href="projectsdetail.jsp">
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
	    	<div class="MyProjectHeader">
	            <span>��Ŀ����${Tasklistsize}��</span>
	        </div>
	         <form  action="createtask">
		        <div class="create-task">
		            <div class="create-task-input">
		            <input type="hidden" name="TA_ID" value="<%=request.getParameter("ta_id")%>"> 
			            <input type="text" name="TNAME" class="taskname" value="<%=request.getParameter("tname")%>" placeholder="������������">
						<input type="text" name="DESCRIPTION" class="taskdetail hidden" value="<%=request.getParameter("description")%>" placeholder="��������Ŀ����">
					</div>
					<p style="float:left;margin-left:10px;">���ڣ�<input type="text" id="datepicker" value="<%=request.getParameter("enddate").substring(0, 11)%>" name="ENDDATE" style="height:30px;margin-top:30px;margin-right:10px;"></p>
					
					<p style="display:inline-block;float:left;margin-top:33px;">ִ����</p>
					<select class="executor" name="MEMBER">
						<option selected="selected"><%=request.getParameter("member")%></option>
						<c:forEach  items="${Memberlist}" var="b">
							<option>${b.username}</option>
						</c:forEach>
					</select>
					<p style="position:absolute;margin-left:510px;margin-top:85px;">�����ȣ�</p>
					<select class="urgency" name="URGENCY">
						<option selected="selected"><%=request.getParameter("urgency")%></option>
						<option>ʮ��</option>
						<option>���ȴ���</option>
						<option>��������</option>
						<option>�п���˵</option>
					</select>
					<p style="position:absolute;margin-left:700px;margin-top:85px;">��ǩ��</p>
					<select class="tags" name="TAGS">
					<option selected="selected"><%=request.getParameter("tags")%></option>
						<option>bug</option>
						<option>�ĵ�</option>
						<option>����</option>
						<option>����</option>
					</select>
					<input type="submit" class="btn btn-success create-task-confirm" value="�޸�"/>
				</div>
			</form>
			<div class="TaskTableBody" style="margin-top:30px;">
				<div class="TaskTableBodyheader">
					<span>${Tasklistsize}</span><span>������</span>
				</div>
	  		
	  		<table class="table table-hover">
					<thead>
						<tr>
							<th>������</th>
							<th>��������</th>
							<th>��������</th>
						
							<th>������</th>
							<th>��ǩ</th>
							<th>ִ����</th>
							<th>������</th>
							<th>ɾ��</th>
							<th>����</th>
							<th>�������</th>
							<th>�޸�</th>
						</tr>
					</thead>
					<tbody>
					   	<c:forEach  items="${Tasklist}" var="c">
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
								����
							    </button></td>
									<td>
										<a href="settaskstatus?ta_id=${c.ta_id}">
											<span class="glyphicon glyphicon-unchecked one_task_check" style="line-height: 5px;" title="�����������">
											</span>
										</a>
									</td>
								   <td>
								   		<a href="projectupdatetask.jsp?ta_id=${c.ta_id}&description=${c.description}&tname=${c.tname}&enddate=${c.enddate}&member=${c.member}&urgency=${c.urgency}&tags=${c.tags}">�޸�</a>
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
								����
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
		<div class="mask hidden">
		</div>
		<div class="create_members hidden">
			<p class="search_friend" style="float:left;">��������</p>
			<span class="glyphicon glyphicon-remove" style="float:right;" id="remove"></span>
			<input type="text" name="" placeholder="����������ǳ�" id="search_friend_text">
			<input type="button" name="" value="����" id="search_friend_button" onclick="check();">
			<div class="search_friend_table">
			<c:forEach  items="${elsefriendlist}" var="a">
				<div class="search_friend_box_list">
					<p>${a.username}</p>
					<a href="addmember?friend_id=${a.tu_id}"><input type="button" name="" value="�������"></a>
				</div>
			</c:forEach>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/bar.js"></script>
	<script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script>
  	 $(function() {
    	$("#datepicker").datepicker({
    		minDate:0
    	});
    	$(".taskname").focus(function(){
    		$(this).siblings(".taskdetail").removeClass("hidden");
    	});
    	$(".taskname").blur(function(){
    		var timer = setTimeout(function(){
    			$(this).siblings(".taskdetail").addClass("hidden");
    		},200);
    		clearTimeout(timer);
    	});
    	$(".taskdetail").focus(function(){
    		$(this).removeClass("hidden");
    	});
    	$(".taskdetail").blur(function(){
    		$(this).addClass("hidden");
    	});
    	$(".all_task_check").click(function(){
    		$(this).removeClass("glyphicon-unchecked").addClass("glyphicon-check");
    		$(".one_task_check").removeClass("glyphicon-unchecked").addClass("glyphicon-check").siblings("p").css("text-decoration","line-through");
    	});
    	$("[data-toggle='popover']").popover();
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

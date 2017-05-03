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
	<title>云·协作  || 好友</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="layui/css/layui.css">
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
	<div class="friend-navigator">
		<div class="friend-menu">
    		<p style="font-size: 18px;font-weight:bold;">
    		好友
    		<span class="glyphicon glyphicon-user" id="create" style="float:right;font-size:15px;margin-top:3px;cursor:pointer;"></span>
    		</p>
    		<p style="font-size: 10px;margin-top:5px;">包括关注我的人以及关注我的人</p>
   		</div>
    	<div class="friend-menu-nav">
    		<a class="friends hvr-shadow-radial" href="queryallfriend">
    			<i class="glyphicon glyphicon-star" style="margin:15px 5px 5px 23px;font-size:17px;"></i>&nbsp;
    			<span style="font-size: 15px;">关注 (${friendlistsize}) </span>
    		</a>
    		<a class="friends hvr-shadow-radial" href="queryallfans">
    			<i class="glyphicon glyphicon-heart" style="margin:15px 5px 5px 23px;font-size:17px;"></i>&nbsp;
    			<span style="font-size: 15px;">粉丝 (${fanslistsize})</span>
    		</a>
    	</div>
	</div>
	<div class="friend-content">
		<div class="friend-content-header">
			<span style="margin-left: 88px;">好友列表</span>
		</div>
		<div class="friend-list" style="margin-left: 70px;">
		<c:forEach  items="${ friendlist}" var="a"  >
			<div class="one-friend">
				<div class="ProjectAddMember_table_list_avatar">
    					<img src="${a.url }"/>
    				</div>
				<div class="friend-file">
					<div class="friend-name">
						<p id="${a.friend_id}">${a.username}</p>
					</div>
					<div class="friend-status">
					<!--  	<i class="glyphicon glyphicon-transfer" style="font-size:9px;float:left;margin-top:5px;"></i>
						<span style="font-size:11px;float:left;margin-top:5px;">互相关注</span> -->
						<a href="deletefriend?f_id=${a.f_id}">
							<div class="unfollow">
								<i class="glyphicon glyphicon-minus"></i>
								<span id="unfollow_button">取消关注</span>
							</div>
						</a>
						<div class="messagehim">
							<span style="cursor: pointer;">给他私信</span>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
	   </div>
	   <div class="mask hidden">
	</div>
	<div class="search_friend_box hidden">
		<p class="search_friend" style="float:left;margin-bottom: 15px;">搜索好友</p>
		<span class="glyphicon glyphicon-remove" style="float:right;    margin-top: 12px;margin-right: 12px;color: #555;font-size: 20px;cursor: pointer;" id="remove"></span>
		<input type="text" name="" placeholder="请输入好友昵称" id="search_friend_text">
		<input type="button" name="" value="查找" id="search_friend_button" class="btn btn-success" style="color:#fff;background-color:#449d44;border-color: #398439;padding-top:3px" onclick="check();">
		<div class="search_friend_table">
			<div class="search_friend_box_list" id="search_friend_box_list">
			
			</div>
		</div>
	</div>
	 <div class="message_to_him hidden">
		<p class="search_friend" style="float:left;width: 267px;margin-bottom: 15px;"> </p>
		<span class="glyphicon glyphicon-remove" style="float:right;margin-top: 12px;margin-right: 12px;color: #555;font-size: 20px;cursor: pointer;" id="closemessage"></span>
		<form action="privateletter">
		<div style="margin-bottom: 20px; width: 500px;">
		  <textarea class="layui-textarea" id="LAY_demo2" name="DESCRIPTION"></textarea>
		</div>
		<input type="text" name="NAME" class="NAME" style="display: none">
		<input type="submit" value="发送" style="position: absolute;right: 15px;border: 0;width: 80px;height: 30px;border-radius: 30px;color: #FFF;background-color: #32be77;">
		</form>
	   </div>
	   </div>
	<script src="js/jquery.js"></script>
	<script src="js/script.js"></script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		$(document).ready(function(){
			$(".messagehim").click(function(){
				$(".mask,.message_to_him").removeClass("hidden");
				var name=$(this).parent().siblings(".friend-name").children("p").html();
				//var friend_id=$(this).parent().siblings(".friend-name").children("p").attr("id");
//				alert(friend_id);
				$(".search_friend").html("给"+name+"发送私信");
				$(".NAME").val(name);
			});
			$("#closemessage").click(function(){
				$(".mask,.message_to_him").addClass("hidden");
			});
			$("#create").click(function(){
				$(".search_friend_box,.mask").removeClass("hidden");
			});
			$(".friends").hover(function(){
				$(this).css({"background-color":"#CDCDC1","cursor":"pointer"});
			},function(){
				$(this).css({"background-color":"#F7F6F2"});
			});
		});
	</script>
	<script type="text/javascript">
var xmlHttp;
function createXMLHttpRequest() {
	// IE
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    } 
    // FireFox
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}

function check() {
  var username=$("#search_friend_text").val();
  url="queryuserbyname?username="+username;
  createXMLHttpRequest();
  xmlHttp.onreadystatechange=callback;
  xmlHttp.open("GET", url, true);
  xmlHttp.send(null); 
  
  }
function callback() {

    if(xmlHttp.readyState == 4) {
        if(xmlHttp.status == 200) {
       // alert(1);
        var message = xmlHttp.responseText;
        var user=message.split(" ");
     //  $("#search_friend_box_list").innerHTML()=xmlhttp.responseText;
        if(message==""){
        alert("查无此人");
        }else if(message=="不能添加自己为好友"){
        alert("不能添加自己为好友");
        }else if(message=="该好友已存在"){
        alert("该好友已存在");
        }
        else{  var $n2 = $("#search_friend_box_list");     
        $n2.html('<div class="ProjectAddMember_table_list_avatar" style="margin-left: 73px;"><img src="'+user[2]+'"/></div><p style="margin-left: 16px;">'+user[0]+'</p>'+
        '<a href="addfriend?friend_id='+user[1]+'"><input type="button" name="" value="关注"></a>');
        }
        }
        
      }
   }
   </script>
   <script>
   	$(document).ready(function(){
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
     <script>
layui.use('layedit', function(){
  var layedit = layui.layedit
  ,$ = layui.jquery;
  
  //构建一个默认的编辑器
  var index = layedit.build('LAY_demo2', {
    tool: ['face', 'left', 'center', 'right','strong','italic','underline','del']
    ,height: 300
  })
});
</script>
</body>
</html>

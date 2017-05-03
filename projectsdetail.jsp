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
	
	<title>云·协作  || 项目明细</title>
	<link href="images/cloudy.png" rel="shortcut icon" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.7-dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/css.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="css/hover.css">
	<meta charset="utf-8">
	<style>
		#remove_a_member{
			cursor:pointer;
		}
		#date2,#date3,#date4,#date5{
			border:none;
			background:transparent;
			margin-top: -52px;
    		margin-left: 205px;
    		cursor:pointer;
		}
		#date2:focus,#date3:focus,#date4:focus,#date5:focus{
			outline:none;
		}
		body,h2,ul,h3{padding:0;margin:0;}
		ul{list-style:none outside none;}
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
					<span class="glyphicon glyphicon-home"></span>
					<span class="nav-name">主页</span>
				</div>
				<div class="nav-item" id="nav-item2">
					<span class="glyphicon glyphicon-file"></span>
					<span class="nav-name">项目</span>
				</div>
				<div class="nav-item" id="nav-item4">
					<span class="glyphicon glyphicon-tasks"></span>
					<span class="nav-name">任务</span>
				</div>
				<div class="nav-item" id="nav-item5">
					<span class="glyphicon glyphicon-user"></span>
					<span class="nav-name">好友</span>
				</div>
				<div class="nav-item" id="nav-item6">
					<span class="glyphicon glyphicon-envelope"></span>
					<span class="nav-name">私信</span>
				</div>
				<div class="nav-item" id="nav-item7">
					<span class="glyphicon glyphicon-bell"></span>
					<span class="nav-name">通知</span>
				</div>
				<div class="nav-item" id="nav-item8">
					<span class="glyphicon glyphicon-tower"></span>
					<span class="nav-name">账户</span>
				</div>
			</div>
			<div class="projectdetailnavcontainer">
				<c:forEach items="${projectinfromation}" var="a">
					<div class="ProjectDetailMenu">
			    		<p>
			    			${a.pname} / ${a.username} 
			    		</p>
			    		<p>${a.description}</p>
			   		</div>
		   		</c:forEach>
		    	<div class="ProjectMenuNav">
		    	    <a class="CreatedMenu hvr-shadow-radial" href="querytimeaxis">
		    			<i class="glyphicon glyphicon-pushpin"></i>
		    			<span>时间轴</span>
		    		</a>
		    		<a class="CreatedMenu hvr-shadow-radial" href="queryalltask">
		    			<i class="glyphicon glyphicon-folder-open"></i>
		    			<span>任务</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" href="discuss">
		    			<i class="glyphicon glyphicon-comment"></i>
		    			<span>讨论</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" href="codefile">
		    			<i class="glyphicon glyphicon-text-height"></i>
		    			<span>代码</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" href="file">
		    			<i class="glyphicon glyphicon-folder-close"></i>
		    			<span>文件</span>
		    		</a>
		    		<a class="JoinedMenu hvr-shadow-radial" id="JoinedMenu">
		    			<i class="glyphicon glyphicon-headphones"></i>
		    			<span>添加成员</span>
		    		</a>
		    	
		    	</div>
		    	<div class="ProjectAddMember">
		    		<p id="add_a_member">所有成员</p>
		    		<div class="ProjectAddMember_table">
			    		<c:forEach  items="${Memberlist}" var="m">
			    			<div class="ProjectAddMember_table_list hvr-forward">
			    				<div class="ProjectAddMember_table_list_avatar">
			    					<img src="${m.url}"/>
			    				</div>
			    				<div class="ProjectAddMember_table_list_name">
			    					${m.username}
			    				</div>
			    				<c:if test="${rname==1}">
				    				<a href="deleteMember?tu_id=${m.tu_id}">
				    					<i class="glyphicon glyphicon-minus hidden" class="remove_a_member" title="移除成员"></i>
				    			    </a>
				    			    <a href="transfer?friend_id=${m.tu_id}">
				    			    	<i class="glyphicon glyphicon-user hidden" id="transfer_project" title="设为项目所有人"></i>
				    			    </a>
			    			    </c:if>		    
			    			</div>
			    	   </c:forEach>
		    		</div>
		    	</div>
			</div>
		    <div class="MyProjectDetails" id="MyProject" style="overflow:auto;">
				<c:forEach  items="${timelist}" var="t">
					<div class="realtimeline" id="fill"></div>
					<div class="timeline">
				  	<div class="timeline-date">
				  		<ul>
				  			<h2 class="second" style="position: relative;">
				  				<span>需求阶段</span>
				  				<span style="margin-left: 21px;font-size: 15px;">${fn:substring(t.demand,0,11)}</span>
				  			</h2>
				  			<li>
				  				<img src="images/icon7.png" onclick="icon1();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon1" title="点击进行">
				  				<dl class="right" >
				  					<span id="span1" onclick="operation(1);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >
				  					了解用户需求，列出功能模块
				  					</span>	  
				  				</dl>
				  			</li>
				  			<c:forEach  items="${operationlist}" var="d">
				  				<input class="${d.schedule}" value="${fn:substring(d.opdate,0,11)}${d.username}${d.operation}" style="display: none">
				  		    </c:forEach>
				  			<li>
				  				<img src="images/icon7.png" onclick="icon2();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon2" title="点击进行">
				  				<dl class="left" style="width: 204px;margin-left: -173px;">
				  					<span id="span2" onclick="operation(2);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >用户需求规格说明书</span>
				  				</dl>
				  			</li>
				  		</ul>
				  	</div>
				  	<div class="timeline-date">
				  		<ul>
				  			<h2 class="second" style="position: relative;">
				  				<span>设计阶段</span>
				  				<span style="margin-left: 21px;font-size: 15px;"><input id="date2" value="${fn:substring(t.design,0,11)}" onchange="changedate(2);" readonly title="点击修改日期"></input></span>
				  			</h2>
				  			
				  			<li>
				  				<img src="images/icon7.png" onclick="icon3();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon3" title="点击进行">
				  				<dl class="right">
				  					<span id="span3" onclick="operation(3);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >软件结构设计</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png" onclick="icon4();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon4" title="点击进行">
				  				<dl class="right">
				  					<span id="span4" onclick="operation(4);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >数据结构设计</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png" onclick="icon5();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon5" title="点击进行">
				  				<dl class="left" style="width: 157px;margin-left: -127px;">
				  					<span id="span5" onclick="operation(5);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >概要设计文档</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png" onclick="icon6();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon6" title="点击进行">
				  				<dl class="right">
				  					<span id="span6" onclick="operation(6);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >设计各模块的实现算法</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon7();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon7" title="点击进行">
				  				<dl class="right">
				  					<span id="span7" onclick="operation(7);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >设计各模块的局部设计</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon8();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon8" title="点击进行">
				  				<dl class="left" style="width: 205px;margin-left: -174px;">
				  					<span id="span8" onclick="operation(8);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >项目规格设计说明书</span>
				  				</dl>
				  			</li>
				  		</ul>
				  	</div>
				  	<div class="timeline-date">
				  		<ul>
				  			<h2 class="second" style="position: relative;">
				  				<span>编码阶段</span>
				  				<span style="margin-left: 21px;font-size: 15px;"><input id="date3" value="${fn:substring(t.code,0,11)}" onchange="changedate(3);" readonly title="点击修改日期"></input></span>
				  			</h2>
				  			
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon9();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon9" title="点击进行">
				  				<dl class="right">
				  					<span id="span9" onclick="operation(9);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >具体编码</span>
				  				</dl>
				  			</li>
				  			
				  		</ul>
				  	</div>
				  	<div class="timeline-date">
				  		<ul>
				  			<h2 class="second" style="position: relative;">
				  				<span>测试阶段</span>
				  				<span style="margin-left: 21px;font-size: 15px;"><input id="date4" value="${fn:substring(t.test,0,11)}" onchange="changedate(4);" readonly title="点击修改日期"></input></span>
				  			</h2>
				  			
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon10();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon10" title="点击进行">
				  				<dl class="left" style="width: 236px;margin-left: -205px;">
				  					<span id="span10" onclick="operation(10);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >项目测试文档规格说明书</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon11();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon11" title="点击进行">
				  				<dl class="right">
				  					<span id="span11" onclick="operation(11);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >模块/整体测试</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon12();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon12" title="点击进行">
				  				<dl class="left" style="width: 203px;margin-left: -173px;">
				  					<span id="span12" onclick="operation(12);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >项目bug文档说明书</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon13();" style="float: left;margin-left: 42px;margin-top: 5px;cursor:pointer;" class="icon13" title="点击进行">
				  				<dl class="right">
				  					<span id="span13" onclick="operation(13);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >错误修正 重复测试</span>
				  				</dl>
				  			</li>
				  			<li>
				  				<img src="images/icon7.png"  onclick="icon14();" style="margin-left: 11px;margin-top: 5px;cursor:pointer;" class="icon14" title="点击进行">
				  				<dl class="left" style="width: 236px;margin-left: -205px;">
				  					<span id="span14" onclick="operation(14);" data-container="body" data-toggle="popover" data-placement="right" data-content="" >项目测试报告规格说明书</span>
				  				</dl>
				  			</li>
				  		</ul>
				  	</div>
				  	<div class="timeline-date">
				  		<ul>
				  			<h2 class="second" style="position: relative;">
				  				<span>结束</span>
				  				<span style="margin-left: 21px;font-size: 15px;"><input id="date5" value="${fn:substring(t.end,0,11)}" onchange="changedate(5);" readonly title="点击修改日期"></input></span>
				  			</h2>
				  		</ul>
				  	</div>
				  	</div>
				  	<div style="clear:both;">
				  	</div>
			  	</c:forEach>
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
	<script type="text/javascript" src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="js/script.js"></script>
	<script type="text/javascript">
	 window.onload=function(){
	// alert("");
	var a="${schedule}";
	//alert(a);
	  /* $("#fill").animate({height:"45px"},3000);
	   
			var timer = setTimeout(function(){
				$(".icon1").attr("src","images/icon7_full.png");
			},1500);*/
			for(var i=1;i<=a;i++){
			 eval("icon"+i+"();");
			}
	  //   icon1(); 
	 }
	 $("#date1,#date2,#date3,#date4,#date5").datepicker({
    	minDate:0,
    	dateFormat: "yy-mm-dd"
    });
	 function icon1(){
	
		$("#fill").animate({height:"45px"},3000);
			var timer = setTimeout(function(){
				$(".icon1").attr("src","images/icon7_full.png");
			},1500);
	        a(1);
		}
	function icon2(){
			$("#fill").animate({height:"100px"},3000);
			var timer = setTimeout(function(){
				$(".icon2").attr("src","images/icon7_full.png");
			},3000);
			 a(2);
		}	
	function icon3(){
			$("#fill").animate({height:"285px"},3000);
			var timer = setTimeout(function(){
				$(".icon3").attr("src","images/icon7_full.png");
			},3000);
			 a(3);
		}
		function icon4(){
			$("#fill").animate({height:"350px"},3000);
			var timer = setTimeout(function(){
				$(".icon4").attr("src","images/icon7_full.png");
			},3000);
			 a(4);
		}
		
		function icon5(){
			$("#fill").animate({height:"415px"},3000);
			var timer = setTimeout(function(){
				$(".icon5").attr("src","images/icon7_full.png");
			},3000);
			 a(5);
		}
		
		function icon6(){
			$("#fill").animate({height:"485px"},3000);
			var timer = setTimeout(function(){
				$(".icon6").attr("src","images/icon7_full.png");
			},3000);
			 a(6);
		}
		
		function icon7(){
			$("#fill").animate({height:"555px"},3000);
			var timer = setTimeout(function(){
				$(".icon7").attr("src","images/icon7_full.png");
			},3000);
			 a(7);
		}
		
		function icon8(){
			$("#fill").animate({height:"625px"},3000);
			var timer = setTimeout(function(){
				$(".icon8").attr("src","images/icon7_full.png");
			},3000);
			 a(8);
		}
		
	     function icon9(){
			$("#fill").animate({height:"810px"},3000);
			var timer = setTimeout(function(){
				$(".icon9").attr("src","images/icon7_full.png");
			},3000);
			 a(9);
		}
		
		function icon10(){
			$("#fill").animate({height:"995px"},3000);
			var timer = setTimeout(function(){
				$(".icon10").attr("src","images/icon7_full.png");
			},3000);
			 a(10);
		}
		
		function icon11(){
			$("#fill").animate({height:"1065px"},3000);
			var timer = setTimeout(function(){
				$(".icon11").attr("src","images/icon7_full.png");
			},3000);
		 a(11);
		}
		
		function icon12(){
			$("#fill").animate({height:"1135px"},3000);
			var timer = setTimeout(function(){
				$(".icon12").attr("src","images/icon7_full.png");
			},3000);
		 a(12);
		}
		function icon13(){
			$("#fill").animate({height:"1205px"},3000);
			var timer = setTimeout(function(){
				$(".icon13").attr("src","images/icon7_full.png");
			},3000);
		 a(13);
		}
		function icon14(){
			$("#fill").animate({height:"1275px"},3000);
			var timer = setTimeout(function(){
				$(".icon14").attr("src","images/icon7_full.png");
			},3000);
	     a(14);
		}
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
		 function a(i){
         url="setschedule?schedule="+i;
		 createXMLHttpRequest();
		 //alert(1);
         xmlHttp.onreadystatechange=callback;
         xmlHttp.open("GET", url, true);
         xmlHttp.send(null);
         } 
       function changedate(i){
       var date=$("#date"+i).val();
      // alert(date);
       url="changedate?date"+i+"="+date;
		 createXMLHttpRequest();
		 //alert(1);
         xmlHttp.onreadystatechange=callback;
         xmlHttp.open("GET", url, true);
         xmlHttp.send(null);
       }
   function callback() {

    if(xmlHttp.readyState == 4) {
        if(xmlHttp.status == 200) {
        //alert("解锁成功");
        
      }
   }
   }
	</script>
<script>
	function operation(sc){
  		//alert(1);
  	    $("[data-toggle='popover']").popover({ html : true });
  	     var s=$("."+sc);
  	     var date = "";
  	        for(var i=0;i<s.length;i++){
  	        date=date+$(s[i]).val()+"<br>";
  	        //$("#span1").attr("data-content",$(s[i]).val());
  	        }
  		$("#span"+sc).attr("data-content",date);
       }
  	$(function(){
    	$("#datepicker").datepicker();
    	$(".ProjectAddMember_table_list").hover(function(){
    		$(this).children("#remove_a_member").removeClass("hidden");
    	},function(){
    		$(this).children("#remove_a_member").addClass("hidden");
    	});

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

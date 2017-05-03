$(document).ready(function(){

	$(".nav-item").hover(function(){
		$(this).css({"opacity":"1.0","background-color":"#878787","border-radius":"7px","cursor":"pointer"});
	},function(){
		$(this).css({"opacity":"0.7","background-color":"#303030"});
	});
	$("#nav-item1").click(function(){
		window.location="guide.jsp";
	});
	$("#nav-item2").click(function(){
		window.location="queryallproject";
	});
	$("#nav-item3").click(function(){
		window.location="team.html";
	});
	$("#nav-item4").click(function(){
		window.location="QueryAllMyTaskServlet";
	});
	$("#nav-item5").click(function(){
		window.location="queryallfriend";
	});
	$("#nav-item6").click(function(){
		window.location="querychat";
	});
	$("#nav-item7").click(function(){
		window.location="querynotice";
	});
	$("#nav-item8").click(function(){
		window.location="account";
	});

	$(".quick_add_icon_box").hover(function(){
		$(".quick_add_list_box").removeClass("hidden");
	},function(){
		$(".quick_add_list_box").addClass("hidden");
	});//鼠标停留在添加icon上显示添加列表
	
	$(".quick_add_list_box").hover(function(){
		$(this).removeClass("hidden");
	},function(){
		$(this).addClass("hidden");
	});//鼠标停留与离开添加列表
	
	$(".avatar-box img").hover(function(){
		$(this).addClass("box_shadow");
	},function(){
		$(this).removeClass("box_shadow");
	});//停留在头像上阴影
	
	
	$(".notification,.AllMenu,.CreatedMenu,.JoinedMenu,.WatchedProject,.StaredProject,.AllTask,.CreatedTask,.JoinedTask").hover(function(){
		$(this).css({"background-color":"#CDCDC1","cursor":"pointer"});
	},function(){
		$(this).css({"background-color":"#F7F6F2"});
	});

	$(".notification-mark").click(function(){
		$(".one-notification").removeClass("unread");
	});

	$("#create").click(function(){
		$(".search_friend_box .mask").removeClass("hidden");
	});

	$("#remove").click(function(){
		$(".mask,.search_friend_box").addClass("hidden");
		$(".mask,.create_members").addClass("hidden");
	});
	$("#JoinedMenu").click(function(){
		$(".mask,.create_members").removeClass("hidden");
	});
	$(".avatar-box").hover(function(){
		$(".avatar-box-options").removeClass("hidden");
	},function(){
		$(".avatar-box-options").addClass("hidden");
	});
	$(".avatar-box-options").hover(function(){
		$(this).removeClass("hidden");
	},function(){
		$(this).addClass("hidden");
	});
	       
        var nextDataNumber = 5;
        
        var ulNode = $('ul.timeline');
        
        function initLiNodes() {
            var liNodes = ulNode.find('li'), count = liNodes.length, i, liNode, leftCount = nextDataNumber * 20;
            for(i=0; i<count; i++) {
                liNode = $(liNodes.get(i));
                if(i % 2 !== 0) {
                    liNode.addClass('alt');
                } else {
                    liNode.removeClass('alt');
                }
            }
        }
        initLiNodes();
})
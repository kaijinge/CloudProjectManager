$(document).ready(function(){
	jQuery.validator.addMethod("isMobile", function(value, element) {
	    var length = value.length;
	    var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
	    return this.optional(element) || (length == 11 && mobile.test(value));
	}, "请正确填写您的手机号码");
	$("#loginform").validate({
		rules : {
			USERNAME :{
				required: true
			},
			PASSWORD :{
				required: true
			}
		},
		messages : {
			USERNAME :{
				required: "请输入用户名"
			},
			PASSWORD :{
				required: "请输入密码"
			}
		}
	});
	$("#regform").validate({
		rules: {
			USERNAME: {
				required: true,
			    minlength:3,
			    maxlength:20
			},
			PASSWORD: {
			    required: true,
			    minlength:6,
			    maxlength:15
			},
			REPWD: {
			    required: true,
			    equalTo:"#password"
			}
		},
		messages: {
			USERNAME: {
				required: "请输入用户名",
			    minlength: "用户名至少由3个字符组成",
			    maxlength: "用户名最多不能超过20个字符"
			},
			PASSWORD: {
			    required: "请输入密码",
			    minlength: "密码最少由6个字符组成",
			    maxlength: "项目描述最多不能超过15个字符"
			},
			REPWD: {
			    equalTo: "两次密码不一致"
			}
		}
	});
	$("#createprojectform").validate({
	    rules: {
	      PNAME: {
	        required: true,
	        minlength:2,
	        maxlength:20
	      },
	      DESCRIPTION: {
	        required: true,
	        minlength:5,
	        maxlength:200
	      },
	      ENDDATE: {
	        required: true
	      }
	    },
	    messages: {
	      PNAME: {
	        required: "请输入项目名",
	        minlength: "项目名至少由两个字符组成",
	        maxlength: "项目名最多不能超过20个字符"
	      },
	      DESCRIPTION: {
	        required: "请输入项目描述",
	        minlength: "项目描述最少由5个字符组成",
	        maxlength: "项目描述最多不能超过200个字符"
	      },
	      ENDDATE: {
	        required: "请输入日期"
	      }
	    },
	    submitHandler: function (){
		  $('.buttongroup input:submit').attr('disabled', 'disabled');				    
		}
	});
	$("#account-details").validate({
	    rules: {
	      PASSWORD: {
	        required: true,
	        minlength:6,
	        maxlength:15
	      },
	      REALNAME: {
	        minlength:2,
	        maxlength:20
	      },
	      TEL : {
	      	isMobile:true
	      },
	      EMAIL : {
	      	email: true
	      },
	      LOC : {
	      	minlength:2,
	      	maxlength:10
	      },
	      DESCRIPTION : {
	      	minlength:2,
	      	maxlength:100
	      }
	    },
	    messages: {
	      PASSWORD: {
	        required: "请输入密码",
	        minlength: "密码至少由6个字符组成",
	        maxlength: "密码最多不能超过15个字符"
	      },
	      REALNAME: {
	        minlength: "密码最少由2个字符组成",
	        maxlength: "密码最多不能超过20个字符"
	      },
	      TEL : {
	      	isMobile:"请输入正确格式的手机号"
	      },
	      EMAIL: {
	        email: "请输入正确的邮箱"
	      },
	      LOC:{
	      	minlength:"请至少填入2个字符",
	      	maxlength:"不要超过10个字符啦"
	      },
	      DESCRIPTION:{
	      	minlength:"请至少填入2个字符",
	      	maxlength:"不要超过100个字符啦"
	      }
	    }
	});
});
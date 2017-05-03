$(document).ready(function(){
	jQuery.validator.addMethod("isMobile", function(value, element) {
	    var length = value.length;
	    var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
	    return this.optional(element) || (length == 11 && mobile.test(value));
	}, "����ȷ��д�����ֻ�����");
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
				required: "�������û���"
			},
			PASSWORD :{
				required: "����������"
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
				required: "�������û���",
			    minlength: "�û���������3���ַ����",
			    maxlength: "�û�����಻�ܳ���20���ַ�"
			},
			PASSWORD: {
			    required: "����������",
			    minlength: "����������6���ַ����",
			    maxlength: "��Ŀ������಻�ܳ���15���ַ�"
			},
			REPWD: {
			    equalTo: "�������벻һ��"
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
	        required: "��������Ŀ��",
	        minlength: "��Ŀ�������������ַ����",
	        maxlength: "��Ŀ����಻�ܳ���20���ַ�"
	      },
	      DESCRIPTION: {
	        required: "��������Ŀ����",
	        minlength: "��Ŀ����������5���ַ����",
	        maxlength: "��Ŀ������಻�ܳ���200���ַ�"
	      },
	      ENDDATE: {
	        required: "����������"
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
	        required: "����������",
	        minlength: "����������6���ַ����",
	        maxlength: "������಻�ܳ���15���ַ�"
	      },
	      REALNAME: {
	        minlength: "����������2���ַ����",
	        maxlength: "������಻�ܳ���20���ַ�"
	      },
	      TEL : {
	      	isMobile:"��������ȷ��ʽ���ֻ���"
	      },
	      EMAIL: {
	        email: "��������ȷ������"
	      },
	      LOC:{
	      	minlength:"����������2���ַ�",
	      	maxlength:"��Ҫ����10���ַ���"
	      },
	      DESCRIPTION:{
	      	minlength:"����������2���ַ�",
	      	maxlength:"��Ҫ����100���ַ���"
	      }
	    }
	});
});
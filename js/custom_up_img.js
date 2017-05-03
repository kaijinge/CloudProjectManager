$(document).ready(function(){
        $("#up-img-touch").click(function(){
        	$("#doc-modal-1").modal({width:'600px'});
        });
});
$(function() {
    'use strict';
    // ��ʼ��
    var $image = $('#image');
    $image.cropper({
        aspectRatio: '1',
        autoCropArea:0.8,
        preview: '.up-pre-after',
        
    });

    // �¼�������¼�
    $('.docs-buttons').on('click', '[data-method]', function() {
   
        var $this = $(this);
        var data = $this.data();
        var result = $image.cropper(data.method, data.option, data.secondOption);
        switch (data.method) {
            case 'getCroppedCanvas':
            if (result) {
                // ��ʾ Modal
                $('#cropped-modal').modal().find('.am-modal-bd').html(result);
                $('#download').attr('href', result.toDataURL('image/jpeg'));
            }
            break;
        }
    });
    
    

    // �ϴ�ͼƬ
    var $inputImage = $('#inputImage');
    var URL = window.URL || window.webkitURL;
    var blobURL;

    if (URL) {
        $inputImage.change(function () {
            var files = this.files;
            var file;

            if (files && files.length) {
               file = files[0];

               if (/^image\/\w+$/.test(file.type)) {
                    blobURL = URL.createObjectURL(file);
                    $image.one('built.cropper', function () {
                        // Revoke when load complete
                       URL.revokeObjectURL(blobURL);
                    }).cropper('reset').cropper('replace', blobURL);
                    $inputImage.val('');
                } else {
                    window.alert('Please choose an image file.');
                }
            }

            // Amazi UI �ϴ��ļ���ʾ����
            var fileNames = '';
            $.each(this.files, function() {
                fileNames += '<span class="am-badge">' + this.name + '</span> ';
            });
            $('#file-list').html(fileNames);
        });
    } else {
        $inputImage.prop('disabled', true).parent().addClass('disabled');
    }
    
    //���ϴ��¼�
    $('#up-btn-ok').on('click',function(){
    	var $modal = $('#my-modal-loading');
    	var $modal_alert = $('#my-alert');
    	var img_src=$image.attr("src");
    	if(img_src==""){
    		set_alert_info("û��ѡ���ϴ���ͼƬ");
    		$modal_alert.modal();
    		return false;
    	}
    	
    	$modal.modal();
    	
    	var url=$(this).attr("url");
    	var canvas=$("#image").cropper('getCroppedCanvas');
    	var data=canvas.toDataURL(); //ת��base64
        $.ajax( {  
                url:url,  
                dataType:'json',  
                type: "POST",  
                data: {"image":data.toString()},  
                success: function(data, textStatus){
                	$modal.modal('close');
                	set_alert_info(data.result);
                	$modal_alert.modal();
                	if(data.result=="ok"){
                		$("#up-img-touch img").attr("src",data.file);
                	
                		var img_name=data.file.split('/')[2];
                		console.log(img_name);
                		$("#pic").text(img_name);
                	}
                },
                error: function(){
                	$modal.modal('close');
                	set_alert_info("�ϴ��ļ�ʧ���ˣ�");
                	$modal_alert.modal();
                	//console.log('Upload error');  
                }  
         });  
    	
    });
    
});

function rotateimgright() {
$("#image").cropper('rotate', 90);
}


function rotateimgleft() {
$("#image").cropper('rotate', -90);
}

function set_alert_info(content){
	$("#alert_content").html(content);
}



 

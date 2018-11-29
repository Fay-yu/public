/**
 * 
 */
$(document).ready(function(){
	$('#myModal').on('shown.bs.modal', function (e) {  
        // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零  
        $(this).css('display', 'block');  
        var modalHeight=300;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });  
	$('#yourModal').on('shown.bs.modal', function (e) {  
        // 关键代码，如没将modal设置为 block，则$modala_dialog.height() 为零  
        $(this).css('display', 'block');  
        var modalHeight=300;  
        $(this).find('.modal-dialog').css({  
            'margin-top': modalHeight  
        });  
    });  
});
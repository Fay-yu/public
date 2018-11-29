$(document).ready(function () {
var one=$("#all tr");
var len=one.length;
var n=6;
var j = 0;
for(var i=0;i<len;i++){
	if(i%n==0){
		j++;
	}
	one.eq(i).addClass("class"+j);
	}


 var num=Math.ceil($("#all").find("tr").length/6);
    $('#pagination-demo').twbsPagination({
        totalPages:num,
        visiblePages: num<10?num:10,
		startPage: 1, 
        version: '1.1',
	    first: "首页",  
        prev: "上一页",  
        next: "下一页",  
        last: "未页",  
        href: "#", 
        onPageClick: function (event, page) {
			 $("#all").find("tr").hide();
             $("."+"class"+page).show();
            $('#page-content').text('Page ' + page);
        }
    });

    $('#navigation').affix({
        offset: {
            top: 200
        }
    });

});


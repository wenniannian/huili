$(function(){
	function loadPage(){
		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				if(data.ok==0){location.href="login.html?back="+location.href;}
			}
		});
	}
	loadPage();
	
	$("#content-box-body").on("click",".add,.reduce",function(){
		var $span=$(this);
		var iid=$span.parent().parent().attr("data-iid"),
			  count=parseInt($span.siblings(":text").val());
		if($span.html()=="+")
			count++;
		else
			count--;
	}).on("click",".del>a",function(e){
		e.preventDefault();
		var $a=$(this);
		var title=$a.parent().siblings(".product").find(".desc>a").html();
			confirm("是否删除 "+title+" ?");
	}).on("click",".check>img",function(){
		var $img=$(this);
		var iid=$img.parent().parent().attr("data-iid"),
			  is_checked=$img.attr("src").endsWith("true.png")?0:1;
	});
	$(".check-top>img").click(function(){
		var $img=$(this);
		var is_checked=
			$img.attr("src").endsWith("true.png")?0:1;
	});
	$("#footerCheckAll").click(function(){
		$(".check-top>img").click();
	})
})
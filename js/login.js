$(function(){
	$("#login>:button").click(function(){
		var $btn=$(this);
		$.ajax({
			type:"post",
			url:"data/users/signin.php",
			data:$btn.parent().serialize(),
			success:function(msg){
				if(msg==="登录成功!"){
					var index=location.search.indexOf('=');
					if(index==-1){
						var i=location.href.lastIndexOf('/');
						location.href=location.href.slice(0,i);
					}else{
						location.href=location.search.slice(index+1);
					}
				}
			}
		})
	})
})
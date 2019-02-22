(function(){
	$("#header").load("header.html",function(){
		var btnSearch=document.querySelector(
			"#top-input>[data-trigger=search]"
		);
		var txtSearch=document.getElementById("txtSearch");
		btnSearch.onclick=function(){
			if(txtSearch.value.trim()!=="")
				location.href=
					"products.html?kw="+txtSearch.value.trim();
		}
		txtSearch.onkeyup=function(e){//onkeyup 事件键盘按键被松开时发生的事件,window自带事件e是必要参数
			if(e.keyCode===13)
				btnSearch.onclick();
		}
		if(location.search.indexOf("kw=")!=-1){
			txtSearch.value=//decodeURI()对传过去的字符串进行转换成计算机对应的 URI 码。
				decodeURI(location.search.split("=")[1]);
		}
		
		$(window).scroll(function(){
			var scrollTop=$(window).scrollTop();
			if(scrollTop>=200){
				$("#header-top").addClass("fixed_nav");
				$(".header-main").css("height",99);
			}else
				$("#header-top").removeClass("fixed_nav");
		});

		$.ajax({
			type:"get",
			url:"data/users/islogin.php",
			dataType:"json",
			success:function(data){
				if(data.ok==0){
					$("#loginList").show().next().hide();
				}else{
					var {uname}=data;
					$("#loginList").hide().next().show()
						.find("#uname").html(uname);
				}
			}
		});
		$("#btnLogin").click(function(e){
			e.preventDefault();
			location.href="login.html?back="+location.href;
		});
		$("#btnSignout").click(function(e){
			e.preventDefault();
			$.ajax({
				type:"get",
				url:"data/users/signout.php",
				success:function(){
					location.reload(true);//重新加载页面
				}
			})
		});
		// 当页面滚动到200后显示搜索框
		$(window).scroll(function(){
			var scrollTop=$(window).scrollTop();
			if(scrollTop>=200){
				$("#header-top").addClass("fixed_nav");
				$(".header-main").css("height",99);
			}else
				$("#header-top").removeClass("fixed_nav");
		});

		var $txtSearch=$("#txtSearch"),
			$shelper=$("#shelper");
		$txtSearch.keyup(function(e){
			if(e.keyCode!=13){
				if(e.keyCode==40){
					if(!$shelper.is(":has(.focus)")){
						$shelper.children(":first").addClass("focus");
					}else{
						var $next=
							$shelper.children(".focus").removeClass("focus")
								.next();
						if($next.length>0)
							$next.addClass("focus");
						else
							$shelper.children(":first").addClass("focus");
					}
				}else if(e.keyCode==38){
					if(!$shelper.is(":has(.focus)")){
						$shelper.children(":first").addClass("focus");
					}else{
						var $prev=
							$shelper.children(".focus").removeClass("focus")
								.prev();
						if($prev.length>0)
							$prev.addClass("focus");
						else
							$shelper.children(":last").addClass("focus");
					}
				}else{
					if($txtSearch.val().trim()!==""){
						$shelper.show();
						$.ajax({
							type:"get",
							url:"data/products/shelper.php",
							data:{kw:$txtSearch.val()},
							dataType:"json",
							success:function(data){
								if(data.length>0){
									var html="";
									for(var item of data){
										var {title,sold_count}=item
										html+=`<li title="${title}">
											<div class="search-item" title="${title}">${title}</div>
											<i>销量: ${sold_count}</i>
										</li>`;
									}
									$shelper.html(html);
								}else{
									$shelper.html(`<li title="未找到">
										<div class="search-item" title="未找到">未找到</div>
									</li>`);
								}
							}
						})
					}else{
						$shelper.hide();
					}
				}
			}
		}).blur(function(){
			$shelper.hide();
		}).focus(function(){
			$txtSearch.keyup();
		})
	})
})();
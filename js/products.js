//js/products.js
'use strict';
//$(函数)  --->document文档加载完成后在执行该JS代码
$(function(){
	var divPages=document.getElementById("pages");
	var ulShowList=document.getElementById("show-list");
	function loadPage(pno=0){
		var kw=location.search.split("=")[1];
		$.ajax({
			type:"get",
			url:"data/products/getProductsByKw.php",
			data:"pno="+pno+"&kw="+kw,
			dataType:"json",
			success: function(output){
				var {products, pageCount}=output;
				var html="";
				for(var p of products){
					var {lid, md, price, title}=p;
					html+=`<li>
						<a href="product_details.html?lid=${lid}" class='sla' target="_blank">
							<img src="${md}" alt="">
						</a>
						<p>
							<span class="price">
							¥${parseFloat(price).toFixed(2)}
							<b class="baoyou">包邮</b>
							</span>
							<a href="product_details.html?lid=${lid}" target="_blank">${title}</a>
						</p>
						<div>
							<span class="reduce">-</span>
							<input type="text" value="1">
							<span class="add">+</span>
							<a href="product_details.html?lid=${lid}" data-lid="${lid}" class="addCart rt">查看详情</a>
						</div>
					</li>`
				}
				
				ulShowList.innerHTML=html;

				var html=
				`<a href="javascript:;" class="previous">上一页</a>`;
				for(var i=0;i<pageCount;i++){
					if(i===pno)
						html+=`<a href="javascript:;" class="current">${i+1}</a>`
					else
						html+=`<a href="javascript:;">${i+1}</a>`
				}
				html+=`<a href="javascript:;" class="next">下一页</a>`
				
				divPages.innerHTML=html;
				var aPrev=document.querySelector("#pages>a.previous"),
						aNext=document.querySelector("#pages>a.next");
				if(pno===0) aPrev.className+=" disabled";
				if(pno===pageCount-1) aNext.className+=" disabled";
			}
		});
	}
	loadPage();
	divPages.onclick=function(e){
		var tar=e.target;//当前作用的元素
		if(tar.nodeName==="A"
			&&tar.className.indexOf("disabled")==-1
			&&tar.className!=="current"){
			if(tar.className.indexOf("previous")!=-1){
				var curra=
					document.querySelector("#pages>a.current");
				var pno=curra.innerHTML-2;
			}else if(tar.className.indexOf("next")!=-1){
				var curra=
					document.querySelector("#pages>a.current");
				var pno=parseInt(curra.innerHTML);
			}else{
				var pno=tar.innerHTML-1;
			}
			loadPage(pno);
		}
	}
	ulShowList.onclick=function(e){
		var tar=e.target;
		//if(tar.className=="reduce"||tar.className=="add"){
		if(/^(reduce|add)$/i.test(tar.className)){
			var txt=tar.parentNode.children[1];
			var n=txt.value;
			if(tar.className=="add")
				n++;
			else if(n>1)
				n--;
			txt.value=n;
		}
	}
			//添加购物车
	// $("#show-list").on("click",".addCart",function(e){
	// 	e.preventDefault();
	// 	var $a=$(this);
	// 	$.ajax({
	// 		type:"get",
	// 		url:"data/users/islogin.php",
	// 		dataType:"json",
	// 		success:function(data){
	// 			if(data.ok==1){
	// 				var lid=$a.data("lid"),//$a.attr("data-lid"),
	// 					  count=$a.siblings(":text").val();
	// 				$.ajax({
	// 					type:"get",
	// 					url:"data/cart/addCart.php",
	// 					data:{ lid, count },
	// 					success:function(){
	// 						loadCart();
	// 					}
	// 				});
	// 			}else
	// 				location.href="login.html?back="+location.href;
	// 		}
	// 	});
	// });

	//--------------筛选框事件---------------
	var $nav=$("#choose-nav");
	$("#updown").click(function(){
		var html=$nav.is(".in")?"展开":"收起";
		$(this).html(html).next().toggleClass("in");
	})
	//------------筛选框点击加入关键词事件------------
	var html="",key=[],chooseKw="",$kw=$("#choose-nav>li>#choose-kw");
	$nav.on("click","a",function(e){
		html="";key=[];chooseKw="";
		e.preventDefault();
		var $a=$(this);
		if(!$a.is(".selected")){$a.addClass("selected").siblings().removeClass("selected")}
		var logo=$(".choose-logo>a.selected").html(),
				hot=$(".choose-hot>a.selected").html(),
				size=$(".choose-size>a.selected").html(),
				time=$(".choose-time>a.selected").html(),
				type=$(".choose-type>a.selected").html();
		if(logo=="全部"){logo="";}else{key.push(logo)}
		if(hot=="全部"){hot="";}else{key.push(hot)}
		if(size=="全部"){size="";}else{key.push(size)}
		if(time=="全部"){time="";}else{key.push(time)}
		if(type=="全部"){type="";}else{key.push(type)}
		chooseKw=logo+" "+hot+" "+size+" "+time+" "+type;
		for(var i=0;i<key.length;i++){
			html+=`<i>${key[i]}</i><b>&times;</b>`;
		}
		$kw.html(html).attr("data-kw",chooseKw);
	});
	//-------------关键词删除事件----------------
	$kw.on("click","b",function(){
		var $b=$(this);
		var kw=$b.prev().html();
		var index=key.indexOf(kw);
		key.splice(index,1);
		var reg=new RegExp(kw,"ig");
		var dataKw=$kw.attr("data-kw");
		chooseKw=dataKw.replace(reg,"");
		$b.prev().remove();
		$b.remove();
		html="";
		for(var i=0;i<key.length;i++){
			html+=`<i>${key[i]}</i><b>&times;</b>`;
		}
		$kw.html(html).attr("data-kw",chooseKw);
	})
	//-------------全部清空事件-----------------
	$("#choose-nav>li>.clearAll").click(function(){
		html="";chooseKw="";key=[];
		$kw.html(html).attr("data-kw",chooseKw);
	})
	//---------------排序框点击事件--------------
	$(".sort>.sort-by>ul").on("click","li",function(){
		var $li=$(this);
		if(!$li.is(".focus")){
			$li.addClass("focus").siblings().removeClass("focus");
		}else if($li.is(".focus")){
			$li.children(":first").children(":first").toggle().siblings().toggle();
		}
	})
});
//js/details.js
(function(){
	if(location.search.indexOf("lid")!=-1){
		var lid=location.search.split("=")[1];
		$.ajax({
			type:"get",
			url:"data/products/getProductById.php",
			data:"lid="+lid,
			dataType:"json"
		}).then(function(output){
			var {product,pics,specs}=output;
            // console.log(product);
            // console.log(pics);
            // console.log(specs);
            var {title, subtitle, price, promise}=product;
			document.querySelector("#show-details>h1")
				.innerHTML=title;
			document.querySelector("#show-details>h3>a")
				.innerHTML=subtitle;
			document.querySelector(
				"#show-details>div.price>div.stu-price>span"
			).innerHTML="¥"+parseFloat(price).toFixed(2);
			document.querySelector(
				"#show-details>div.price>div.promise>b"
			).innerHTML="服务承诺:"+promise;

			var {lname,title,shelf_time}=product;
			document.querySelector("#param>ul")
				.innerHTML=`<li>
				<a href="javascript:;">品牌：${lname}</a>
			</li>
			<li>
				<a  href="javascript:;" title="${title}">商品名称：${title.slice(0,25)+"..."}</a>
			</li>
			<li>
				<a  href="javascript:;">商品编号：${shelf_time}</a>
			</li>
			<li>
				<a href="javascript:;">商品毛重：500.00g</a>
			</li>
			<li>
				<a href="javascript:;">商品产地：中国大陆</a>
			</li>`;

				/*为你推荐轮播效果*/
			var speed = 20;
			var tab = document.getElementById("demo");
			var tab1 = document.getElementById("demo1");
			var tab2 = document.getElementById("demo2");
			tab2.innerHTML = tab1.innerHTML;
			function Marquee() {
				if (tab2.offsetWidth - tab.scrollLeft <= 0)
				tab.scrollLeft -= tab1.offsetWidth
				else {
				tab.scrollLeft++;
				}
			}
			var MyMar = setInterval(Marquee, speed);
			tab.onmouseover = function () {
				clearInterval(MyMar)
			};
			tab.onmouseout = function () {
				MyMar = setInterval(Marquee, speed)
			};		//结束
			
			document.getElementById("product-intro")
				.innerHTML=product.detail;

			$('#sml').on('click','a',function(){
				$(this).addClass("active").siblings().removeClass("active");
			})

			var html="";
			for(var {sm, md, lg} of pics){
				html+=`<li class="i1"><img src="${sm}" data-md="${md}" data-lg="${lg}"></li>`;
			}
			var LIWIDTH=62;
			var ulPics=document.getElementById("icon_list");
			ulPics.innerHTML=html;
			ulPics.style.width=LIWIDTH*pics.length+"px";
			var mImg=document.getElementById("mImg"),
				lgDiv=document.getElementById("largeDiv");
			mImg.src=pics[0].md;
			lgDiv.style.backgroundImage="url("+pics[0].lg+") ";
			if(pics.length<=5)
				document.querySelector("#preview>h1>a.forward")
					.className+=" disabled";
			var moved=0,offset=20;
			var aForward=
				document.querySelector("#preview>h1>a.forward");
			var aBackward=
				document.querySelector("#preview>h1>a.backward");
			aForward.onclick=function(e){
				e.preventDefault();
				var a=this;
				if(a.className.indexOf("disabled")==-1){
					moved++;
					ulPics.style.left=-moved*LIWIDTH+offset+"px";
					aBackward.className="backward";
					if(pics.length-moved===5)
						a.className+=" disabled";
				}
			}
			aBackward.onclick=function(e){
				e.preventDefault();
				var a=this;
				if(a.className.indexOf("disabled")==-1){
					moved--;
					ulPics.style.left=-moved*LIWIDTH+offset+"px";
					aForward.className="forward";
					if(moved===0)
						a.className+=" disabled";
				}
			}

			ulPics.onmouseover=function(e){
				var tar=e.target;
				if(tar.nodeName==="IMG"){
					var {md, lg}=tar.dataset;
					mImg.src=md;
					lgDiv.style.backgroundImage="url("+lg+")";
				}
			}
			var mask=document.getElementById("mask"),
				  sMask=document.getElementById("superMask");
			sMask.onmouseover=function(){
				mask.style.display="block";
				lgDiv.style.display="block";
			}
			sMask.onmouseout=function(){
				mask.style.display="none";
				lgDiv.style.display="none";
			}
			var MSIZE=175, SMSIZE=350;
			sMask.onmousemove=function(e){
				var left=e.offsetX-MSIZE/2;
				var top=e.offsetY-MSIZE/2;
				if(left<0) 
					left=0; 
				else if(left>SMSIZE-MSIZE)
					left=SMSIZE-MSIZE;
				top=top<0?0:top>SMSIZE-MSIZE?SMSIZE-MSIZE:top;
				mask.style.left=left+"px";
				mask.style.top=top+"px";
				lgDiv.style.backgroundPosition=
					-16/7*left+"px "+ -16/7*top+"px";
			}
		})
	}
})();
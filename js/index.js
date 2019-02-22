//轮播图&小圆点
$(function(){
    var $ul=$(".banner-img");
    var $ulIds=$(".indicators");
    var LIWIDTH=1300,interval=500,wait=3000,moved=0,timer=null;
    $.ajax({
        type:"get",
        url:"data/index/getCarousel.php",
        dataType:"json",
        success:function(data){
            // 动态生成banner四图
            var html="";
            for(var c of data){
                var {img, href, title}=c;
                html+=`<li>
				 <a href="${href}" title="${title}">
					<img src="${img}">
				 </a>
			 </li>`;
            }
            var {img, href, title}=data[0];
            html+=`<li>
				 <a href="${href}" title="${title}">
					<img src="${img}">
				 </a>
			 </li>`;
            $ul.html(html).css("width",LIWIDTH*(data.length+1));
            $ulIds.html("<li></li>".repeat(data.length))
                .children(":first").addClass("hover");
            autoMove();
        }
    });
    // 导航小圆点
    function autoMove(){
        timer=setInterval(function(){
            move();
        },wait);
    }
    function move(){
        moved++;
        $ul.animate({
            left:-moved*LIWIDTH
        },interval,function(){
            if(moved==$ul.children().length-1){
                $ul.css("left",0);
                moved=0;
            }
            $ulIds.children(":eq("+moved+")").addClass("hover")
                .siblings().removeClass("hover");
        })
    }
    $("#banner").mouseenter(function(){
        clearInterval(timer);
        timer=null;
    }).mouseleave(function(){
        autoMove();
    });
    $ulIds.on("click","li",function(){
        var $li=$(this);
        var i=$li.index();
        moved=i;
        $ul.stop(true).animate({
            left:-moved*LIWIDTH
        },interval,function(){
            $ulIds.children(":eq("+moved+")").addClass("hover")
                .siblings().removeClass("hover");
        })
    });
    var $aLeft=$(".ck-left"),
        $aRight=$(".ck-right");
    $aRight.click(function(){
        if(!$ul.is(":animated")){
            move();
        }
    });
    $aLeft.click(function(){
        if(!$ul.is(":animated")){
            if(moved==0){
                moved=$ul.children().length-1;
                $ul.css("left",-moved*LIWIDTH);
            }
            moved--;
            $ul.animate({
                left:-moved*LIWIDTH
            },interval,function(){
                $ulIds.children(":eq("+moved+")").addClass("hover")
                    .siblings().removeClass("hover");
            })
        }
    })
});
//楼层
$(function(){
    $.ajax({
        type:"get",
        url:"data/index/getIndexProducts.php",
        dataType:"json"
    }).then(function(products){
        //动态加载楼层
        var html="";
        products.forEach(function(p,i){
            var { details, pic, price, href}=p;
            if(i<3){
                html+=`<li>
                <a href="${href}">
                    <img src="${pic}">
                </a>
                <div>
                    <p class="desc">${details}</p>
                    <p>
                    <span class="price">¥${price}</span>
                    <img src="img/index//hot.png" class="rt">
                    <b class="baoyou rt">hot&nbsp;</b>
                    </p>
                    <div class="f1-hover">
                        <p>
                            <span>限时抢购</span>
                            <span class="price">¥${price}</span>
                        </p>
                        <a href="${href}">查看详情</a>
                        <a href="javascript:;">加入收藏 </a>`;
            }else if(i<7){
                html+=
                `<li>
                    <a href="${href}"><img src="${pic}" class="active_img"></a>
                    <p class="desc"><a href="${href}">${details.slice(0,20)+"..."}</a></p>
                </li>`;
            }
                });
        document.querySelector(".div_Recommend>ul#F1").innerHTML=html;
        $("#F1").on("mouseenter","li",function(){
            $(this).find(".f1-hover").addClass("in");
        }).on("mouseleave","li",function(){
            $(this).find(".f1-hover").removeClass("in");
        });

        var html="";
        products.forEach(function(p,i){
            var { details, pic, price, href, sold_count}=p;
            if(i>9){
                html+=`<li class="dwf">
						<div class="floor-li">
							<img src="${pic}" >
                            <p class="pp folltp">${details.slice(0, 30)}</p>
                            <p>
                             <span class="price">¥${parseFloat(price).toFixed(2)}</span>
                             <i class="rt" style="height:30px;line-height:30px;color:#000;font-size:15px;">评论：<u>${sold_count}</u></i>
                             
                            </p>
                           
							<a href="${href}" class="view">查看详情</a>
						</div>
					</li>`;
            }
        });
        document.querySelector("#f2>div.content>ul").innerHTML=html;
        
        // 左侧楼层导航条
        var $divLift=$("#lift"),
            $floors=$(".f1");
        $(window).scroll(function(){
            var scrollTop=$(window).scrollTop();//  记录滚轮离顶部的距离
            if(scrollTop>=200){
                $divLift.show();
                $floors.each(function(i,f){
                    // i是两个楼层的下标0,1 ；f是两个楼层
                    var $f=$(f);
                    var offsetTop=$f.offset().top;  // 返回第一个匹配元素的偏移坐标。该方法返回的对象包含两个整型属性：top 和 left，以像素计。
                    // console.log(offsetTop);
                    if(offsetTop<=scrollTop+innerHeight)   // 当前屏幕的大小
                        $divLift.find(".lift_item:eq("+i+")")       /*:eq()  从第几个元素开始 */
                            .addClass("lift_item_on")
                            .siblings().removeClass("lift_item_on");
                })
            }else{
                $divLift.hide();
            }
        });
        $divLift.children("ul").on("click","li",function(e){
            e.preventDefault();
            var $li=$(this);
            var i=$li.index();
            if(i<2){
                var offsetTop=$($floors[i]).offset().top;
                $("html,body").stop(true).animate({
                    scrollTop: offsetTop
                },500);
            }else{
                $("html,body").stop(true).animate({
                    scrollTop: 0
                },500);
            }

        })
    });
});


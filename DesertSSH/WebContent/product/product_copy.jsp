<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<html>
	<head>
		<title>甜点屋</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery-1.5.1.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<script src="../js/jquery.easydropdown.js"></script>
		<!----webfonts--->
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<script src="../js/jquery.min.js"></script>
		<link rel="stylesheet" href="../css/etalage.css">
		<link href="../css/form.css" rel="stylesheet" type="text/css" media="all" />
		<script src="../js/jquery.easydropdown.js"></script>

		<script src="../js/jquery.etalage.min.js"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- //Custom Theme files -->
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
		<!-- js -->
		
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->	
		<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
		
		
		<script>

			
		</script>
	
	<style>
		/*********************排序*******************************/
			
			.filter {
				font-size:14px;
				padding: 5px 10px;
				background: #FFEFDB;
				width:88.5%;
			}
			
			.filter_sort a:hover, .filter_sort .on {
				background: #FFEFDB;
			}
			
			.filter_sort a {
				display: block;
				float: left;
				height: 26px;
				line-height: 18px;
				margin-left: -1px;
				padding: 5px 10px;
				border: 1px solid #c7c7c7;
				background: #fff;
				color: #444;
			}
			
			
			.filter_sort a i {
				width: 10px;
				height: 16px;
				margin-left: 3px;
				background: url(。。/images/filter_icon.png) no-repeat 0 0;
			}
			i, s {
				display: inline-block;
				vertical-align: middle;
			}
			
			.filter_sort .price i {
				background-position: -20px 0;
			}
			.filter_sort a i {
				width: 10px;
				height: 16px;
				margin-left: 3px;
				background: url(../images/filter_icon.png) no-repeat 0 0;
			}
			
			.clearfix::after, .wrap::after {
				content: ".";
				display: block;
				height: 0;
				clear: both;
				visibility: hidden;
			}			
	
		/***--------------------类别--------------------------**/

			.select {
				word-break: break-all;
				word-wrap: break-word;
				font-size: 12px;
				font-family: Arial,Verdana,"\5b8b\4f53";
				line-height: 25px;
			}
			.select {
				font-size:14px;
				width: 88.5%;
				line-height: 25px;
				margin: 15px 0;
			}
			
			.select .all {
				position: relative;
				background: #FFEFDB;
				border: 1px solid #c7c7c7;
				border-right-color: #e5e5e5;
			}
			
			.select .tit {
				float: left;
				width: 78px;
				padding: 5px 0 5px 20px;
				color: #909090;
			}
			
			.select .all ul {
				background: #FFEFDB;
			}
			.select ul {
				float: left;
				position: relative;
				width: 100%;
				padding: 5px 0;
				zoom: 1;
			}
			ul, ol, dl, dt, dd {
				list-style-type: none;
			}
			
			
			.select li {
				float: left;
				display: inline;
			}
			
			
			.select a {
				display: inline-block;
				white-space: nowrap;
				padding: 0 15px;
				text-decoration: none;
				color: #444;
			}
			a {
				color: #444;
				text-decoration: none;
				outline: none;
			}
			
			.select .all li::after {content: "|";}
	
				
		/**-----------------------------------------------**/
		
		.dh{
			border-bottom:0px;
			display:block;
		}
		
		
		
		
		  .col-md-3 {
		    width: 23.5%;
		  }
		  
		  
		  .img-responsive, .thumbnail > img, .thumbnail a > img, .carousel-inner > .item > img, .carousel-inner > .item > a > img {
		    display: block;
		    max-width: 80%;
		    height: auto;
		}
		  
		  
		.container {
		    padding-right: 15px;
		    padding-left: 30px;
		    margin-right: 50px;
		    margin-left: auto;
		}
		
		
		.gallery-info {
		    position: absolute;
		    width: 70%;
		    bottom: 21%;
		    left: 6%;
		    display: none;
		    background-color: rgba(6, 6, 6, 0.79);
		    padding: 1em;
		}
		
		
		.gallery-info a.shop {
		    font-size: 0.8em;
		    color: #fff;
		    padding: 0.1em 1.0em;
		    border: 1px solid #fff;
		    float: right;
		}
		
		
		span.glyphicon.glyphicon-eye-open {
		    top: 3px;
		    color: #fff;
		    margin-right: 2px;
		}
		
		.gallery-info a.shop {
			font-size: 0.8em;
			color: #fff;
			padding: 0.1em 1.0em;
			border: 1px solid #fff;
			float: right;
			}
			
		.select .tit {
		    float: left;
		    width: 78px;
		    padding: 5px 0 5px 20px;
		    color: #909090;
		}
		
		.galy-info h5 {
		    font-size: 1.0em;
		    color: #999;
		}
		
		.prices {
		    float: right;
		    margin-right:30px;
		}
		
	</style>
	
	<script>	
	function showProduct(data,status){
		var item;
		//alert("123:"+$('#contextPath').val());
		jQuery("#product_list").html("");
		if(data.length==0){
			jQuery("#product_list").append("<strong class='st'>对不起，该店铺当天没有商品可选！您可以另选店面或日期。</strong>");	
		}else{
			for(var i=0;i<data.length;i++){
				item=data[i];
				var url=$('#context').val()+"/"+item.img;
				jQuery("#product_list").append(
						"<div class='col-md-3 gallery-grid '>"+
						"<a href='"+$('#contextPath').val()+"/productDetail?planItemId="+item.id+"'><img src="+url+" class='img-responsive' alt='暂无图片'/>"+
							"<div class='gallery-info'>"+
								"<p><span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span>查看详情</p>"+
								"<a class='shop' href="+"---"+">立即购买</a>"+
								"<div class='clearfix'> </div>"+
							"</div>"+
						"</a>"+
						"<div class='galy-info'>"+
							"<p>"+item.name+"</p>"+
							"<div class='galry'>"+
								"<div class='prices'>"+
									"<h5 class='item_price'>RMB "+item.price+"/个</h5>"+
								"</div>"+
								"<div class='rating'>"+
									"<span>"+item.category+"</span>"+
								"</div>"+						
								"<div class='clearfix'></div>"+
							"</div>"+
						"</div>"+
					"</div>");
			}
		}
	}
	
	
	function search(){
    	var j={'category':category};
        doAjax("<%=request.getContextPath() + "/product_findProductByParams.do"%>",j,showProduct);
    }
	
	
	  function doAjax(url1, inf1, func1){
	        jQuery.ajax({type:"GET", url:url1,data:inf1,
	        	dataType:"json", jsonp:"callback", success:func1
	  	  		, error:function(){
	    	    alert("Ajax Error.");
	    		}
				}
	    )}
	
	var now = new Date();
	var book_date=now.getFullYear()+"-"+((now.getMonth()+1)<10?"0":"")+(now.getMonth()+1)+"-"+(now.getDate()<10?"0":"")+now.getDate();
	var book_store="新街口总店",category="",price="0-1000";
	
	$(document).ready(function($){
		$(".store").click(function(){
			store=$(this).text();
			$(".store").css("color","black");
			$(this).css("color","#1a8bc8");
			search();
		  });
		
		$(".date").click(function(){
			book_date=$(this).text();
			$(".date").css("color","black");
			$(this).css("color","#1a8bc8");
			search();
		  });
		$(".price").click(function(){
			price=$(this).text();
			if(price.match("以上")!=null){
				price=price.substr(0,price.length-2)+"-12000";
			}else if(price.match("以下")){
				price="0-"+price.substr(0,price.length-2);
			}
			$(".price").css("color","black");
			$(this).css("color","#1a8bc8");
			search()
		  });
		
		$(".category").click(function(){
			category=$(this).text();
			$(".category").css("color","black");
			$(this).css("color","#1a8bc8");
			search()
		  });	
		search();
	
	});
	
	</script>	
	
	</head>
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	<!---start-content----->
	
	
	<div class="gallery" style="background-color: #fff">
		<div class="container" style='margin-top:-25px;'>
			
			<div style="min-height:20px;margin-top:-20px;">
				
				<div class="dh">
					
					<div class='select'>   
						<div class="all clearfix">
							<div class="tit" style='float:left;width:10%;'>►所有分类</div>
							<div class='item' style='float:left;width:80%;background-color:red;'>
								<ul>
									<li class=" "><a href="#">奇异果</a></li>
									<li class=" "><a href="#">车厘子</a></li>
									<li class=" "><a href="#">牛油果</a></li>
									<li class=" "><a href="#">提子</a></li>
									<li class=" "><a href="#">苹果</a></li>
									<li class=" "><a href="#">梨</a></li>
									<li class=" "><a href="#">柑桔橙柚</a></li>
									<li class=" "><a href="#">香蕉</a></li>
								</ul>
							</div>
						</div>
					</div>
					
				</div>
				
				<div class='dh' style='margin-top:-10px;'>
					<div id="formCx" class="filter clearfix">
						<div class="filter_sort">
								<a class="on" href="javascript:;" _sort="0">默认排序</a>
								<a class="" href="javascript:;" _sort="1">销量<i class="up"></i></a>
								<a class="price" href="javascript:;" _sort="3">价格<i class="sort_down"></i></a>
								<a class="" href="javascript:;" _sort="5">评论<i class="dowm"></i></a>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
		<div class="container">
				<input id='context' value='<%=request.getContextPath()%>' hidden=true/>
			<div class="gallery-grids" id="product_list">
			
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="../images/img1.jpg" class="img-responsive" alt="暂无图片"/>
						<div class='gallery-info'>
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW </a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Cache is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">RMB95.00/个</h5>
							</div>
							<div class="rating">
								<span>生日蛋糕</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="../images/m5.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="single.html">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>Lorem Ipsum is simply</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /footer -->
</body>
</html>

    
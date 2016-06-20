<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<html>
	<head>
		<title>甜点屋</title>
		<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="../js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<link href="../css/mystyle.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<script src="../js/jquery.easydropdown.js"></script>
		<!----webfonts--->
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<script src="../js/jquery.min.js"></script>
		<script type="text/javascript" src="../js/move-top.js"></script>
		<script type="text/javascript" src="../js/easing.js"></script>
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

		<script src="../js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 800,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});
				
				$('#addCart').click(function(){
					
				});

			});
			
			
		</script>

	</head>
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	<!---start-content----->
	
<div class="gallery" style="background-color: #fff">
<div class="container">
			
	<div style="min-height:20px;margin-top:10px;">
		<div class='row' style='boder-bottom:solid 1px;'>
			<div style='float:left;width:font-weight: 700;font-size: 16px;color: #f40'>
				<span>全部商品</span>
			</div>
			<div style='float:right'>
				<span>已选商品<strong style='color:#f40'>￥100.00</strong></span>
				<span><input type='button' class='btn' value='结算'></span>
			</div>
			<hr/>
		</div>
		
		<div class='row' style='margin-bottom:8px;'>
			<ul>
				<li style='margin-left:5px'><input type='checkbox' />全选</li>
				<li>商品信息</li>
				<li style='margin-left:160px'>单价</li>
				<li>数量</li>
				<li>金额</li>
				<li>操作</li>
			</ul>
			
		</div>
		<div class='row'>
			<div class='cartItem'>
				<div class='cart_shop'>
					<span class='cart_span'><input type='checkbox' /><strong>店铺 ：</strong>新街口总店</span>
				</div>
				
				<div class='cart_detail'>
					<ul>
						<li style='margin-left:5px'><input type='checkbox' /></li>
						<li style='width:180px;'><div class='ln1'><img class='cart_img' src='../images/11.jpg'/></div></li>
						<li ><div class='ln'>￥26.00</div></li>
						<li><div class='ln'>3</div></li>
						<li><div class='ln'>￥78.00</div></li>
						<li><div class='ln'>删除</div></li>
					</ul>
					
					<ul>
						<li style='margin-left:5px'><input type='checkbox' /></li>
						<li style='width:180px;'><div class='ln1'><img class='cart_img' src='../images/13.jpg'/></div></li>
						<li ><div class='ln'>￥26.00</div></li>
						<li><div class='ln'>3</div></li>
						<li><div class='ln'>￥78.00</div></li>
						<li><div class='ln'>删除</div></li>
					</ul>
				</div>
				
			</div>
			
			
		</div>
		
		<div class='row'>
			<div class='cartItem'>
				<div class='cart_shop'>
					<span class='cart_span'><input type='checkbox' /><strong>店铺 ：</strong>仙林分店</span>
				</div>
				
				<div class='cart_detail'>
					<ul>
						<li style='margin-left:5px'><input type='checkbox' /></li>
						<li style='width:180px;'><div class='ln1'><img class='cart_img' src='../images/12.jpg'/></div></li>
						<li ><div class='ln'>￥26.00</div></li>
						<li><div class='ln'>3</div></li>
						<li><div class='ln'>￥78.00</div></li>
						<li><div class='ln'>删除</div></li>
					</ul>
					
					<ul>
						<li style='margin-left:5px'><input type='checkbox' /></li>
						<li style='width:180px;'><div class='ln1'><img class='cart_img' src='../images/11.jpg'/></div></li>
						<li ><div class='ln'>￥26.00</div></li>
						<li><div class='ln'>3</div></li>
						<li><div class='ln'>￥78.00</div></li>
						<li><div class='ln'>删除</div></li>
					</ul>
				</div>
				
			</div>
			
		</div>
			
		
	</div>	
	
</div>
</div>
</body>
</html>

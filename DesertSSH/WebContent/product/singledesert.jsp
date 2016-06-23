<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
	<head>
		<title>甜点屋</title>
		
		<link href="<%=request.getContextPath() %>/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="<%=request.getContextPath() %>/css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script src="<%=request.getContextPath() %>/js/jquery.easydropdown.js"></script>
		<!----webfonts--->
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/move-top.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/easing.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/etalage.css">
		<link href="<%=request.getContextPath() %>/css/form.css" rel="stylesheet" type="text/css" media="all" />
		<script src="<%=request.getContextPath() %>/js/jquery.easydropdown.js"></script>

		<script src="<%=request.getContextPath() %>/js/jquery.etalage.min.js"></script>

		
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 240,
					thumb_image_height: 300,
					source_image_width: 640,
					source_image_height: 800,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>
		
		
			<!---商品加减算总数---->
	<script type="text/javascript">
	$(function () {
		var t = $("#text_box2");
		$("#add2").click(function () {
			t.val(parseInt(t.val()) + 1)
			setTotal(); GetCount();
		})
		$("#min2").click(function () {
			if(parseInt(t.val())>=1){
			t.val(parseInt(t.val()) - 1)
			}
			setTotal();
		})
		function setTotal() {

			$("#total2").html((parseInt(t.val()) * 8).toFixed(2));
			$("#newslist-2").val(parseInt(t.val()) * 8);
		}
		setTotal();
	})
	
	
	
	  function doAjax(url1, inf1, func1){
	        jQuery.ajax({type:"GET", url:url1,data:inf1,
	        	dataType:"json", jsonp:"callback", success:func1
	  	  		, error:function(){
	    	    alert("Ajax Error.");
	    		}
				}
	    )}
	
	
	 function addProductToCart(src){
		  var id=src.id;
		  var n=$('#text_box2').val();
		  var j={'spid':id,'num':n};
	      doAjax("<%=request.getContextPath() + "/order_addProductToCart.do"%>",j,addCartBack);
	  }
	 
	 function addCartBack(data,status){
		  alert("添加商品至购物车成功！ ");
	  }
	
	</script>
		
		
	</head>
	<body>	
	
	<jsp:include page="../common/head.jsp" flush="true" />
	<!-- banner -->
		<div class="details">
		<div class="container"   style="margin-left:250px">
				<div class="row single"> 
				<div class="col-md-9">
				  <div class="single_left">
				 
				 
				 <jsp:useBean id="desert" class="com.home.desert.pogo.Product" 
								scope="session"></jsp:useBean>	
				 
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								
									<img class="etalage_thumb_image" src='<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img" />' class="img-responsive" style="width:60px;height:80px"/>
									<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img" />" class="img-responsive" title="" />
								
							</li>
							<li>
								<img class="etalage_thumb_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img2" />" class="img-responsive" />
								<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img2" />" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img3" />" class="img-responsive"  />
								<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="desert" property="img3" />"class="img-responsive"  />
							</li>
						   
						</ul>
						 <div class="clearfix"></div>		
				  </div>
				  <div class="desc1 span_3_of_2">
					<h2 style="font-weight:bold;font-size:35px;margin-left:50px"><jsp:getProperty name="desert" property="name" /></h2>
					<h3><span style="background:#CCCCCC;font-size:16px;margin-left:50px">价格</span><span style="text-decoration:line-through;margin-left:50px">￥<jsp:getProperty name="desert" property="price" /></span> </h3>
					<h2><span style="background:#CCCCCC;font-size:16px;margin-left:50px">折后价</span><span style="color:red;font-weight:bold;margin-left:30px">￥<jsp:getProperty name="desert" property="price" /></span> </h2>
					
					
					
					<div class="det_nav">
						<input id="min2" name=""  style=" width:40px; height:38px;border:1px solid #ccc;;margin-left:50px" type="button" value="-" />
				        <input id="text_box2" name="" type="text" value="1" style=" width:50px;height:50px;font-size:20px;font-weight:bold; text-align:center; border:1px solid #ccc;" />
				        <input id="add2" name="" style=" width:40px; height:38px;border:1px solid #ccc;" type="button" value="+" />
						
					</div>
					
					<div class="btn_form">
						<button class="button1" style="margin-left:250px"  id='<jsp:getProperty name="desert" property="id" />' onclick='addProductToCart(this)'>
							<span style="width:50px;height:60px;font-size:20px;font-weight:bold; text-align:center;" >加入购物车</span>
						</button>
					</div>
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
			   
          	    <div class="single-bottom1">
					<h6>甜品细节</h6>
					<p class="prod-desc">
					生产许可证编号: QS341213010025
					产品标准号: SB/T10021
					厂名: 界首市华裕糖果食品有限公司
					厂址: 安徽省阜阳市界首市阳阳西路厂家
					联系方式: 0754-82499960配料表: 
					精选优质软糖储藏方法:
					 常温下保存保质期: 365
					 食品添加剂: 产品: 软糖净含量: 
					 500g包装方式: 散装品牌: other
					 /其他系列: 软糖是否含糖: 含糖产地:
					  中国大陆省份: 安徽省城市: 阜阳市
					
					</p>
				</div>
				<div class="single-bottom2">
					<h6>相关产品</h6>
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="<%=request.getContextPath()%>/images/15.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">XX蛋糕</a></h5>
		                           <p class="product_descr"> 好吃好吃好吃. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$7.51</span>								
								<button class="button1"><span>加入购物车</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
					  <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="<%=request.getContextPath()%>/images/16.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">XX蛋糕</a></h5>
		                           <p class="product_descr"> 好吃好吃好吃. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$7.51</span>								
								<button class="button1"><span>加入购物车</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
				     <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="<%=request.getContextPath()%>/images/17.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">XX蛋糕</a></h5>
		                           <p class="product_descr"> 好吃好吃好吃. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$7.51</span>								
								<button class="button1"><span>加入购物车</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
		   	  </div>
	       </div>
		   
		   
				
				
				
				
				<div class="clearfix"></div>	
	</div>
	</div>
	</div>

	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
</body>
</html>

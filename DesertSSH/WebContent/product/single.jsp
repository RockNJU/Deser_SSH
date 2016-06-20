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
	
		<!-- js -->
		<link href="../css/mystyle.css" rel='stylesheet' type='text/css' />
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->	
		<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
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
			
			function orderData(){
				var planItemId=$('#planItemId').val();
				var num=$('#product_num').val();
				var store=$('#store').val();
				
				jsonStr+="\"num\":";
				jsonStr+="\""+num+"\"";
				jsonStr+=",";
				
				jsonStr+="\"store\":";
				jsonStr+="\""+store+"\"";
				jsonStr+=",";
				
				jsonStr+="\"planItemId\":";
				jsonStr+="\""+planItemId+"\"";
				jsonStr+="})";
				//alert("jsondata-------searchData-----"+jsonStr);
				return eval(jsonStr);//关键在于转换。
			}
			
				function addSuccess(){
					
				}
				
			function addChart(){
				//data:productData(src);
				
				jQuery.ajax({
					type:'post',
					url:'http://localhost:8080/DesertHouse//addProductToChart',
					data:productData(),//可以直接加一个函数名。
					dataType:'json',
					callback:addSuccess
				});
			}	
		</script>

	</head>
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	
	

<input id='planItemId' value='<jsp:getProperty name="productDetail" property="planItemId" />' hidden='hidden'/>
<input id='store' value='新街口总店' hidden='hidden'/>

<div class="details">
<div class="container">
<div class="row single">
<div class="col-md-9">
				  <div class="single_left">
				 
					<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img" />" class="img-responsive" />
									<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img" />"" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img2" />"" class="img-responsive" />
								<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img2" />"" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img3" />"" class="img-responsive"  />
								<img class="etalage_source_image" src="<%=request.getContextPath() %>/<jsp:getProperty name="productDetail" property="img3" />""class="img-responsive"  />
							</li>
						   
						</ul>
						 <div class="clearfix"></div>		
				  </div>
				  <div class="desc1 span_3_of_2">
					<h3><jsp:getProperty name="productDetail" property="productName" /></h3>
					<p>RMB. <jsp:getProperty name="productDetail" property="price" /> <a href="#">click for offer</a></p>
					
					<div class="det_nav1">
						<h4>选择蛋糕尺寸</h4>
							<div class=" sky-form col col-4">
								<ul>
									<li><label class="checkbox"><input class='cacheSize' type="checkbox" name="checkbox"><i></i>1kg</label></li>
									<li><label class="checkbox"><input class='cacheSize' type="checkbox" name="checkbox"><i></i>2kg</label></li>
									<li><label class="checkbox"><input class='cacheSize' type="checkbox" name="checkbox"><i></i>3kg</label></li>
									<li><label class="checkbox"><input class='cacheSize' type="checkbox" name="checkbox"><i></i>4kg</label></li>
									 <div class="clearfix"></div>
								</ul>
							</div>
							 <div class="clearfix"></div>
					</div>
					
					<div class="det_nav">
						<div class='innerItem'> <h4>数量 </h4></div>
						<div class='innerItem'><input id='product_num'  type='text' value='1' /></div>
						<div class='innerItem'>
							<span class="mui-amount-btn">
				                <span class="glyphicon glyphicon-plus" style="width:30px"></span>
				                <br/>
				                 <span class="glyphicon glyphicon-minus" style="width:30px"></span>
							</span>
						</div>
						
						<div class='innerItem'> <h4>剩余<jsp:getProperty name="productDetail" property="restNum" />可预订 </h4></div>
					
					</div>
					
					<div class="det_nav1" style='width:100%;float:left'>
						<div class="btn_form tb-btn-basket">
							<a id='buy' href="#">立即购买</a>
							<a id='addCart' href="#" style='margin-left:10px;background-color: #c40000;color:white'><i>&#xe612;</i>添加至购物栏</a>
						</div>
					</div>
					
					
					
			   	 </div>
          	    <div class="clearfix"></div>
          	   </div>
			   
          	    <div class="single-bottom1">
					<h6>产品详情</h6>
					<p class="prod-desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option</p>
				</div>
				
				<div class="single-bottom2">
					<h6>相似产品，猜你喜欢</h6>
						<div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="../images/15.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							  <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
					  <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="../images/16.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
				     <div class="product">
						   <div class="product-desc">
								<div class="product-img">
		                           <img src="../images/17.jpg" class="img-responsive " alt=""/>
		                       </div>
		                       <div class="prod1-desc">
		                           <h5><a class="product_link" href="#">Excepteur sint</a></h5>
		                           <p class="product_descr"> Vivamus ante lorem, eleifend nec interdum non, ullamcorper et arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>									
							   </div>
							   <div class="clearfix"></div>
					      </div>
						  <div class="product_price">
								<span class="price-access">$597.51</span>								
								<button class="button1"><span>Add to cart</span></button>
		                  </div>
						 <div class="clearfix"></div>
				     </div>
		   	  </div>
	       </div>
		   
		   
<div class="col-md-3 single_left">
			   <div class="block block-layered-nav first">
                  <p class="block-subtitle">最受欢迎的购物选择</p>
                  
                  <div class="tags">
				    	<h4 class="tag_head">最受欢迎</h4>
				         <ul class="tags_links">
							<li><a href="#">巧克力蛋糕</a></li>
							<li><a href="#">榴莲牛奶蛋挞</a></li>
							<li><a href="#">好吃点</a></li>
							<li><a href="#">水果类蛋糕</a></li>
							
						</ul>
						<a href="#" class="link1">View all tags</a>
			 	</div>
			 	
            <dl id="narrow-by-list">
                 
				<dt class="even">最受欢迎口味</dt>
					<dd class="even">
					<ol>
					    <li>
					                <a href="#">苹果味</a>
					                        
					            </li>
					    <li>
					                <a href="#">黑森林蛋糕</a>
					                        
					            </li>
					    <li>
					                <a href="#">巧克力味</a>
					                        
					            </li>
					    <li>
					                <a href="#">蓝 莓</a>
					                        
					            </li>
					    
					</ol>
					</dd>
					
					<dt class="odd">青睐价格范围</dt>
                    <dd class="odd">
					<ol>
					    <li>
					                <a href="#"><span class="price">￥100.00</span> - <span class="price">￥199.99</span></a>
					                        
					            </li>
					    <li>
					                <a href="#"><span class="price">￥200.00</span> - <span class="price">￥299.99</span></a>
					                        
					            </li>
					    <li>
					                <a href="#"><span class="price">￥300.00</span> 以上</a>
					                        
					            </li>
					</ol>
					</dd>
              
                  </dl>
          
                </div>
				
		     
			 
			 
		   </div>		   
				<div class="clearfix"></div>	
</div>
</div>
</div>
	
</body>
</html>

    
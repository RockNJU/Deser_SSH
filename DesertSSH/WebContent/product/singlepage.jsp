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

			});
		</script>

	</head>
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	
	
	<div class="details">
		<div class="container" style="min-height:500px;background-color:">
		<div class="row single" style="min-height:100px;background-color:">
			<div class="single_left img_div">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="../images/11.jpg" class="img-responsive" />
									<img class="etalage_source_image" src="../images/11.jpg" class="img-responsive" title="" />
								</a>
							</li>
							
							<li>
								<img class="etalage_thumb_image" src="../images/14.jpg" class="img-responsive" />
								<img class="etalage_source_image" src="../images/14.jpg" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="../images/12.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="../images/12.jpg"class="img-responsive"  />
							</li>
						</ul>
						 <div class="clearfix"></div>		
				  </div>
			</div>
			
			<div class="img_div">
			
				<div class="singlerow rowElem noborder">
					<span class="title"><strong>榴莲牛奶生日蛋糕</strong></span>
					
				</div>
			
				<div id="single_price" class="singlerow rowElem noborder">
					<label for='o_price'>原价:</label> <span id="o_price">120.00</span>
					<br/>
					<label for='n_price'>促销价:</label> <span id="n_price"><strong>112.00</strong></span>
				</div>
				
				<div class="singlerow rowElem noborder">
					<label for='num'>数量</label><input id='num' type='text' />
				</div>
			</div>
			
			
			
		</div>
		</div>
	
	</div>
	
</body>
</html>

    
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<html>
	<head>
		<title>甜点屋</title>
		<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
		 <!-- Custom Theme files -->
		<link href="<%=request.getContextPath()%>/css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<script src="<%=request.getContextPath()%>/js/jquery.easydropdown.js"></script>
		<!----webfonts--->
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
		<link rel="stylesheet" href="../css/etalage.css">
		<link href="<%=request.getContextPath()%>/css/form.css" rel="stylesheet" type="text/css" media="all" />
		<script src="<%=request.getContextPath()%>/js/jquery.easydropdown.js"></script>

		<script src="<%=request.getContextPath()%>/js/jquery.etalage.min.js"></script>
		
	
		<script src="<%=request.getContextPath()%>/js/sweetalert.min.js"></script>
		<link href="<%=request.getContextPath()%>/css/sweetalert.css" rel="stylesheet" type="text/css" media="all" />
		
		<script src="<%=request.getContextPath()%>/js/fly.js"></script>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- //Custom Theme files -->
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
		<!-- js -->
		
		<script type="text/javascript" src="<%=request.getContextPath()%>/productjs/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->	
		<!-- cart -->
		<script src="<%=request.getContextPath()%>/productjs/simpleCart.min.js"> </script>
		
	</head>
	
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	<!---start-content----->
	
	
	<div class="gallery" style="background-color: #fff">
		<div class="container" style='margin-top:-25px;'>
			
					<div class="about">
						<div class="container">
							<h4>关于我们</h4>
							<img src="<%=request.getContextPath()%>/images/about.jpg" class="img-responsive" title="image-name" />
							<p>甜点屋是居于南京市的一个多分区的连锁店铺，提供甜点的购买，我们的店面分布在南京的各个角落，有人群的地方，就有我们的踪影。只要您想吃甜点了，那就来吧。</p>
							<p> 我们提供用户自主上面取货，送货上面两种方式。如果您自足到店面取货，我们在南京市各个去都有店面，您可以选择就近的任何人店面取货，方便快捷，对于送货上面，因为甜点的易变质的属性，我们承诺2小时送到。</p>
							<p>如果您是经常熬夜的上班族，或是好动的在校学生，或是您的小孩喜爱甜点，只要你们喜爱甜点，那么，这里就是您的美味天堂，这里有各式各样的甜点，种类繁多，质优价廉，绝对能满足您的需求。</p>
							<a href='<%=request.getContextPath()%>/product/product_copy.jsp'>尽情购买吧</a>
						</div>
					</div>
			
				
		</div>
	</div>
		
<input id='ctgy' value='' hidden=true />
	<!-- /footer -->
</body>
</html>

    
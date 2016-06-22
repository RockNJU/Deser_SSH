<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    

<html>
	<head>
		<title>甜点屋</title>
		<link rel="stylesheet" href="https://static-s.bilibili.com/css/core-v5/base.css">
<link id="css" rel="stylesheet" type="text/css" href="https://static-s.bilibili.com/account/css/zclc2.css?v=1.0.1" />

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
		<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
		<link href="../css/mystyle.css" type="text/css" rel="stylesheet" media="all">
		<!-- js -->
		
		<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
		<!-- //js -->	
		<!-- cart -->
		<script src="js/simpleCart.min.js"> </script>
		<script>
		
		
		</script>
	
	
	
	
	</head>
	<body>
	<!-- container -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	<!---start-content----->
	
	<input id='contextPath' hidden='true' value='<%=request.getContextPath()%>' />
	
<div class="details">
<div class="container" >

<div class="row single" style="background-color: white;">
<br>
<div class="col-md-1"  ></div>
<div class="col-md-10"  >
	<form onsubmit="return false;">
		<div class="security-center">
			<div class="sr-t">
				<span class="tit-a"></span><span class="acc-sec"><a href="../user/userInfo.jsp"><font  color="grey">我的信息</a></font></span>
				<span style="padding-left:15px"><span class="tit-b"></span><span class="acc-sec">充值信息</span></span>
			</div>
			<div class="sr-b">
					  <div class="register">
		  	  <div> 
				 <div ><center> 
						<div style="position:relative;width:942px;height:227px;text-align:left;background:url(../images/account.jpg )" >
				　			　<div style="position:relative; z-index:2; left:229px; top:0px">
　　				　　				<font size="7" color="#52372e" >244.3</font>
　						　	 </div>
							　<div style="position:relative; z-index:2; left:490px; top:-74px; font-size:24px; color:#52372e"; >
								<form>
									<input name="rechargenum" type="text" value="0" size="10" maxlength="7" />
									<input type="submit" style="background:url(../images/cz.jpg); border-style:none; 
 width:55px; height:31px; background-repeat:no-repeat;" title="充值对应金额到余额"; value=""; id='recharge'>
								</form>
							 </div>
							 
							 　<div style="position:relative; z-index:2; left:229px; top:-42px">
　　				　　				<font size="7" color="#52372e" >324</font>
　						　	 </div>
							　<div style="position:relative; z-index:2; left:490px; top:-113px; font-size:24px; color:#52372e"; >
								<form>
									<input name="exchangenum" type="text" value="0" size="10" maxlength="7" />
									<input type="submit" style="background:url(../images/dh.jpg); border-style:none; 
 width:55px; height:31px; background-repeat:no-repeat;" title="将积分兑换成余额"; value=""; id='exchange'>
								</form>
							 </div>
							 　<div style="position:relative; z-index:2; left:747px; top:-268px">
　　				　　				<font size="4.5" color="black" >激活</font>
　						　	 </div>
							 　<div style="position:relative; z-index:2; left:364px; top:-283px">
　　				　　				<center><font size="4.5" color="black" >VIP</font></center>
　						　	 </div>
						</div>
						</br>
						
				</div></center> 
				
			</div>


	     </div>
	    </div>
			
			</div>
		<div>
		<br><br>
		</div>
	</form>
			   	
</div>
</div>
</div>
</div>
</div>
	<!-- /footer -->
</body>
</html>

    
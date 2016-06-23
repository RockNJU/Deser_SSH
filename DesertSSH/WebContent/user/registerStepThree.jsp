<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
	<head>
		<title>甜点屋</title>
		<link href="<%=request.getContextPath() %>/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<%=request.getContextPath() %>/js/jquery-4.5.1.js"></script>
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
		
		<script>
		jQuery(document).ready(function($){
			
			$("input").focus(function(){
				  this.select();
			 });
		});
		
		
		</script>
		
		
	</head>
	<body>
	
	<!-- 头部导航 -->
	<jsp:include page= "../common/head.jsp" flush="true"/>
	<!---start-content----->
	
	<!---start-content----->
<!---start-content----->
	<div class="content">
	<div class="main">
	   <div class="container">
		  <div class="register">
		  	  <div> 
			 <center> <img src="<%=request.getContextPath()%>/images/re3.jpg"  alt="会员充值" /> </center> 
			</br>
				 <div ><center> 
						<div style="position:relative;width:942px;height:227px;text-align:left;background:url(<%=request.getContextPath()%>/images/account.jpg )" >
				　			　<div style="position:relative; z-index:2; left:229px; top:0px">
　　				　　				<font size="7" color="#52372e" >0.0</font>
　						　	 </div>
							　<div style="position:relative; z-index:2; left:490px; top:-74px; font-size:24px; color:#52372e"; >
								<form action="<%=request.getContextPath() %>/user_registerStep3.do" method="post">
									<input name="rechargenum" type="text" value="0" size="10" maxlength="7"  name='money'/>
									<input type="submit" style="background:url(<%=request.getContextPath()%>/images/cz.jpg); border-style:none; 
 width:55px; height:31px; background-repeat:no-repeat;" title="充值对应金额到余额" value=""  id='recharge' >
								</form>
							 </div>
							 
							 　<div style="position:relative; z-index:2; left:229px; top:-65px">
　　				　　				<font size="7" color="#52372e" >0</font>
　						　	 </div>
							　<div style="position:relative; z-index:2; left:490px; top:-140px; font-size:24px; color:#52372e"; >
								<form>
									<input name="rechargenum" type="text" value="0" size="10" maxlength="7" />
									<input type="submit" style="background:url(<%=request.getContextPath()%>/images/dh.jpg); border-style:none; 
 width:55px; height:31px; background-repeat:no-repeat;" title="将积分兑换成余额"; value=""; id='exchange'>
								</form>
							 </div>
							 　<div style="position:relative; z-index:2; left:747px; top:-318px">
　　				　　				<font size="4.5" color="black" >激活</font>
　						　	 </div>

							 　<div style="position:relative; z-index:2; left:364px; top:-333px">
　　				　　				<center><font size="4.5" color="black" >VIP</font></center>
　						　	 </div>
                             <div style="position:relative; z-index:2; left:364px; top:-370px">
　　				　　				<p style="font-weight:bold;font-size:20px;color:#52372e;text-align:center">充值越多~</p>
                                <p style="font-weight:bold;font-size:20px;color:#52372e;text-align:center;margin-top:-10px">&nbsp&nbsp优惠越多哦~</p>
　						　	 </div>
						</div>
						</br>
						
				</div></center> 
				
			</div>


				<div class="register-but">		
					 <center>	
				     <div>
				     </br>
					   <input type="submit" style="background:url(<%=request.getContextPath()%>/images/button2.jpg); border-style:none; 
 width:154px; height:54px; background-repeat:no-repeat;" value="" id='register'>
					   <div class="clearfix"> </div>
					 
				   </div>
				     </center>
				</div>
		   </div>
	     </div>
	    </div>
		</div>
	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>


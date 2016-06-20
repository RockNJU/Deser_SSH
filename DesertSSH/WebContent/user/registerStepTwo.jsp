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
		</script>
		<script src="../js/jquery.easydropdown.js"></script>
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
	   <form action="<%=request.getContextPath() %>/user_registerStep2.do" method="post">
		  <div class="register">
		  	  <div> 
			 <center> <img src="../images/re2.jpg"  alt="基础信息" />
							 </br>
					 </br>
				 <div class="register-top-grid">
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">

						<span><font color="#5a0f16">姓名</font></span>
						<input type="text" id='username'> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">年龄</font></span>
						<input type="text" id='age' name='age'> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
				<form>
				<span><font color="#5a0f16">性别</font></span>
		<input type="radio" name="sex" value="男" /> 男性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" name="sex" value="女" /> 女性
			</form>
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">职业</font></span>
						<input type="text" id='work' name='work'> 
					 </div>
					  <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span><font color="#5a0f16">地址</font></span>
						<input type="text" id='addressmain' name='address'>
							 </div>
							 	  <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span><font color="#5a0f16">备用地址</font></span>
						<input type="text" id='addressother'>
							 </div>

<!-- 					   <a class="news-letter" href="#"> -->
<!-- 						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>注册时接收短信通知</label> -->
<!-- 					   </a> -->
					 </div>
				</div>


				<div class="register-but">		
					 <center>	
				     <div>
				     </br>
					   <input type="submit" style="background:url(../images/button1.jpg); border-style:none; 
 width:154px; height:54px; background-repeat:no-repeat;" value="" id='register'>
					   <div class="clearfix"> </div>
					   </center>
				   </div>
				</div>
			</form>
				
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


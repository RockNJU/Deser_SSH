<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 
    <% 
    session.removeAttribute(Constants.USERINFO);
    %>
    
<html>
	<head>
		<title>甜点屋</title>
		<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		<link href="<%=request.getContextPath()%>/css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script src="<%=request.getContextPath()%>/js/jquery.easydropdown.js"></script>
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
	
	<jsp:include page="../common/head.jsp" flush="true" />
	<!---start-content----->
	
	<!---start-content----->
	<div class="content">
	<div class="container">
		<div class="login-page">
			   <div class="account_grid">
			   <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
			  	 <h3>注册新客户</h3>
				 <p>注册我们商店的一个新账号, 您可以在本网站轻松订购您喜欢的甜点,存储多个您可能用到的收获地址, 查看订单详情以及享有会员优惠.</p>
				 <a class="acount-btn" href="../user/registerStepOne.jsp">注册新账号</a>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
			  	<h3>老客户</h3>
				<p id='info'>如果您已经有一个我们的账号了, 那么请登录.</p>
				<form action='<%=request.getContextPath()%>/user_login.do' method='post'>
				<div>
					<p><strong>${info}&nbsp;</strong></p>
				  <div>
					<span>用户账号<label>*</label></span>
					<input type="text" id='email' name='mail'> 
				  </div>
				  <div>
					<span>密码<label>*</label></span>
					<input type="password" id='pwd' name='password'> 
				  </div>
				  <a class="forgot" href="#" style='margin-top:10px;'>忘记密码?</a>
				  <input type="submit" id='login' value="登录" style='margin-top:10px;'/>
			    </div>
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
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


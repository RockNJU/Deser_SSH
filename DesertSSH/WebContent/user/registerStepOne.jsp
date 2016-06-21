<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="com.home.desert.pubutil.*" %> 
 <%
	session.removeAttribute(Constants.USERINFO);
%> 

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
			  
			$("#register").click(function(){
				
					if($('#pwd').val()!=$('#pwd_confirm').val()){
						alert("密码不一致");
						return;
					}
					
				  $.post("http://localhost:8080/Desert/register",
				  {
				    email:$('#email').val(),
				    pwd:$('#pwd').val(),
				    name:$('#name').val(),
				  	phone:$('#phone').val(),
				  	telephone:$('#telephone').val()
				  },
				  function(data,status){
					  if(data=="OK"){
						  window.location.href="http://localhost:8080/Desert/user/register2.jsp"; 
					  }else{
						  $('#info').text("");
						  $('#info').text(data);
						  setTimeout($("#info").css({"color":"red","font-weight":"600"}),50000);
					  }
				  });
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
	     <form action="user_registerStep1.do" method="post">
		  <div class="register">
		  	  <div> 
			 	<center> <img src="../images/re1.jpg"  alt="基础信息" />
							 </br>
					 </br>
				 <div class="register-top-grid">
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">

						<span><font color="#5a0f16">用户名</font><label>*</label></span>
						<input type="text" id='name' name='name'> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">手机号</font><label>.</label></span>
						<input type="text" id='phone' name='phone'> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span><font color="#5a0f16">邮箱</font><label>*</label><p><strong>${info}&nbsp;</strong></p></span>
						 <input type="text" id='email' name='mail'> 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">固定电话</font><label>.</label></span>
						<input type="text" id='telephone'> 
					 </div>
					  <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span><font color="#5a0f16">密码</font><label>*</label></span>
						<input type="text" id='pwd' name='password'>
							 </div>
						<div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">密码确认</font><label>*</label></span>
						<input type="text" id='pwd_confirm'>
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


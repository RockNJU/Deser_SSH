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
			 });});
		
		function validate(){
			
			 var checkMail  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			 var checkPhone = /^1[3|4|5|7|8]\d{9}$/;
		     var checkTelephone = /^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/;
			
			$('#hint').html("");
			
			if(($('#email').val()=="")||($('#name').val()=="")||($('#pwd').val()=="")||($('#pwd_confirm').val()=="")){
				$('#hint').append("加 * 号为必填选项，不得为空");
			}else if(!(checkMail.test($('#email').val()))){
				$('#hint').append("请输入合法的邮件地址");
			}else if($('#pwd').val()!=$('#pwd_confirm').val()){
				$('#hint').append("密码不一致");
				}else if((!(checkPhone.test($('#phone').val())))&&(!$('#phone').val()=="")){
					$('#hint').append("请输入正确的手机号码");
				}else if(!(checkTelephone.test($('#telephone').val()))&&!$('#telephone').val()==""){
					$('#hint').append("请输入正确的电话号码");
				}else{
						var t="";
							   t= 'email='+$('#email').val();
							    t=t+"&"+'password='+$('#pwd').val();
							    t=t+"&"+'name='+$('#name').val();
							    t=t+"&"+'phone='+$('#phone').val();
							    t=t+"&"+'telephone='+$('#telephone').val();
							  	
							 
						 window.location.href="http://localhost:8080/DesertSSH/user/registerStepTwo.jsp"; 
								  
				}
				

			}
		
		
		
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
			 	<center> <img src="../images/re1.jpg"  alt="基础信息" />
							 </br>
					 </br>
					 <p><strong id="hint">${error}&nbsp;</strong></p>
				 <div class="register-top-grid">
				  <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span><font color="#5a0f16">邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱</font><label>&nbsp&nbsp*&nbsp&nbsp</label><input type="text" id='email' name='mail'></span>
						  
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">

						<span><font color="#5a0f16">用&nbsp&nbsp户&nbsp&nbsp名</font><label>&nbsp&nbsp*&nbsp&nbsp</label><input type="text" id='name' name='name'> </span>
						
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span><font color="#5a0f16">密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码</font><label>&nbsp&nbsp*&nbsp&nbsp</label><input type="password" id='pwd' name='password'></span>
						
							 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">手&nbsp&nbsp机&nbsp&nbsp号</font><label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="text" id='phone' name='phone'> </span>
						
					 </div>
					 
						<div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">密码确认</font><label>&nbsp&nbsp*&nbsp&nbsp</label><input type="password" id='pwd_confirm'></span>
						
							 </div>
					
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span><font color="#5a0f16">固定电话</font><label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="text" id='telephone'> </span>
						
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
					   <input type="submit" onclick = 'validate();'style="background:url(../images/button1.jpg); border-style:none; 
 width:154px; height:54px; background-repeat:no-repeat;margin-left:-40px;margin-top:30px" value="" id='register'>
					   <div class="clearfix"> </div>
					   </center>
				   </div>
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


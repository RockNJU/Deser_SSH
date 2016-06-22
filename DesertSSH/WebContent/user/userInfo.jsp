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
		
		
		$("#offer").click(function(){
			
			if($('#pwd').val()!=$('#pwd_confirm').val()){
				alert("密码不一致");
				return;
			}
			
		  $.post("http://localhost:8080/Desert/register",
		  {
		    email:$('#email').val(),
		    pwd:$('#pwd').val(),
		    addressmain:$('#addressmain').val(),
		    addressother:$('#addressother').val(),
		  	phone:$('#phone').val(),
		  	telephone:$('#telephone').val()
		  },
		  function(data,status){
			  if(data=="OK"){
				  window.location.href="http://localhost:8080/Desert/user/userInfo.jsp"; 
			  }else{
				  $('#info').text("");
				  $('#info').text(data);
				  setTimeout($("#info").css({"color":"red","font-weight":"600"}),50000);
			  }
		  });
		});
		
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
<div class="col-md-9"  >
	<form onsubmit="return false;">
		<div class="security-center">
			<div class="sr-t">
				<span class="tit-b"></span><span class="acc-sec">我的信息</span>
				<span class="tit-a"></span><span class="acc-sec" style="padding-left:15px"><a href="../user/userpay.jsp"><font  color="grey">充值信息</a></font></span>
			</div>
			<div class="sr-b">
				<ul>
					
					<li>
						<div class="sb-info">
							<p class="sbi-l">用户名：</p>
							<div class="sbi-m">
								<span>zafara</span>
							</div>
						</div>
					</li>
					
					<li>
						<div class="sb-info">
							<p class="sbi-l">性别：</p>
							<div class="sbi-m">
								<span>男</span>
							</div>
						</div>
					</li>
					
					<li>
						<div class="sb-info">
							<p class="sbi-l">手机号：</p>
							<div class="sbi-m">
						     <span><input class="user-id" type="text" name="phone" value="141234112" id="phone"></span>
												</div>
						</div>
					</li>
							<li>
						<div class="sb-info">
							<p class="sbi-l">固定电话：</p>
							<div class="sbi-m">
						    <span><input class="user-id" type="text" name="telephone" value="342343423" id="telephone"></span>
												</div>
						</div>
					</li>
					<li>
						<div class="sb-info">
							<p class="sbi-l">邮箱：</p>
							<div class="sbi-m">
						    <span><input class="user-id" type="text" name="email" value="asidfjoiasdf@sij.com" id="email"></span>
												</div>
						</div>
					</li>
					<li>
						<div class="sb-info">
							<p class="sbi-l">密码：</p>
							<div class="sbi-m">
						    <span><input class="user-id" type="text" name="pwd" value="" id="pwd"></span>
												</div>
						</div>
					</li>
					<li>
						<div class="sb-info">
							<p class="sbi-l">密码确认：</p>
							<div class="sbi-m">
						    <span><input class="user-id" type="text" name="pwd_confirm" value="" id="pwd_confirm"></span>
												</div>
						</div>
					</li>
					<li>
						<div class="sb-info">
							<p class="sbi-l">我的住址：</p>
							<div class="sbi-m">
								<textarea name="addressmain" id="" cols="30" rows="5" class="my-sign">你好市区抱歉县</textarea>
							</div>
						</div>
					</li>
					</br>
					<li></li>
						<li>
						<div class="sb-info">
							<p class="sbi-l">备用住址：</p>
							<div class="sbi-m">
								<textarea name="addressother" id="" cols="30" rows="5" class="my-sign">你好市区抱歉县</textarea>
							</div>
						</div>
					</li>
					</br>
				</ul>
			</div>
		<div class="sb-line"></div>
			<input type="submit" id="offer" class="sb-save" value="保存" style="position: absolute;bottom:15px;display: block;">
		</div>
		<div>
		<br><br><br>
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

    
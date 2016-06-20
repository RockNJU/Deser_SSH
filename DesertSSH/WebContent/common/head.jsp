<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 
 <!-- container -->
		<!-- top-header -->
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul>
						<li><a href="index.html"><img id='logo' src="<%=request.getContextPath()%>/images/logo.png" title="甜点屋" style='width:80px;height:40px;margin-top:5px;'/></a></li>
						<div class="clearfix"> </div>
					</ul>
				</div>
				<div class="top-header-center">
					<!--
					<p><span class="cart"> </span>购物车<label>￥5256</label></p>
					  -->
				<%
					 if(session.getAttribute(Constants.USERINFO)!=null){
						 out.append("<p><span class='cart'> </span>购物车<label>￥5256</label></p>");
					 }
					  
				 %>
					  
					  
				</div>
				<div class="top-header-right" style='float:right;margin-top:10px;'>
					<ul>
						<li>
							<form>
								<input type="text">
								<input type="submit" value="" />
							</form>
						</li>
						
						<% 
							
							if(session.getAttribute(Constants.USERINFO)!=null){
								out.append("<li class='active'><a href="+request.getContextPath()+"/user/userInfo.jsp>我的账户</a></li>");
								out.append("<li><a href="+request.getContextPath()+"/user/login.jsp'>退出</a></li>");
							}else{
								out.append("<li class='active'><a href="+request.getContextPath()+"/user/login.jsp>登录</a></li>");
								out.append("<li><a href="+request.getContextPath()+"/user/registerStepOne.jsp>注册</a></li>");
							}
						
						%>
						
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- /top-header -->
		<!-- main-menu -->
		<div class="main-menu">
			<div class="container">
			

			
			<div class="head-nav">
				<span class="menu"> </span>
				<ul>
					<li class="active"><a href="index.html">主页</a></li>
					<li><a href="<%=request.getContextPath()%>/product/product.jsp">商品</a></li>
					<li><a href="<%=request.getContextPath()%>/product/cart.jsp">店铺</a></li>
					<li><a href="<%=request.getContextPath()%>/product/cart.jsp">我的订单</a></li>
					<div class="clearfix"> </div>
				</ul>
			</div>	
				<!-- script-for-nav -->
					<script>
						$( "span.menu" ).click(function() {
						  $( ".head-nav ul" ).slideToggle(300, function() {
							// Animation complete.
						  });
						});
					</script>
				<!-- script-for-nav -->

				
			</div>
		</div>
		<!-- /main-menu -->

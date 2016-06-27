<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 
<%@ page import="com.home.desert.pogo.User" %> 
 <!-- container -->
		<!-- top-header -->
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul>
						<li><a href="../user/index.jsp"><img id='logo' src="<%=request.getContextPath()%>/images/logo.png" title="甜点屋" style='width:80px;height:40px;margin-top:5px;'/></a></li>
						
						 
						
				<%
						User user=(User)session.getAttribute(Constants.USERINFO);
					 if(user!=null){
						
						 out.append("<li><a style='margin-top:9px;font-size: 1.1em;'>欢迎您，"+user.getName()+"</a></li>");

					 }
					  
				 %>
						
						<div class="clearfix"> </div>
					</ul>
				</div>
				<div class="top-header-center" ">
					<!--
					<p><span class="cart"> </span>购物车<label>￥5256</label></p>
					  -->
					 
				<%
					 if(session.getAttribute(Constants.USERINFO)!=null){
						 //out.append("<p><span class='cart'> </span><a herf='+request.getContextPath()+'/product/cart_copy.jsp''>购物车</a><label>￥5256</label></p>");
						
						 out.append("<div><p><a href="+request.getContextPath()+"/product/cart_copy.jsp><span class='cart'></span></a></p></div>");

					 }
					  
				 %>
					  
					  
				</div>
				<div class="top-header-right" style='float:right;margin-top:10px;font-size:15px;font-family:SimSun;'>
					<ul>
						<li>
							<form action='<%=request.getContextPath()%>/product_searchProduct.do'>
								<input type="text" name='search'>
								<input type="submit" value=""  />
							</form>
						</li>
						
						<% 
							
							if(session.getAttribute(Constants.USERINFO)!=null){
								out.append("<li><a href="+request.getContextPath()+"/user/order.jsp>我的订单</a></li>");
								
								out.append("<li><a href="+request.getContextPath()+"/user/user.jsp>我的账户</a></li>");
								out.append("<li><a href="+request.getContextPath()+"/user/login.jsp>退出</a></li>");
							}else{
								out.append("<li><a href="+request.getContextPath()+"/user/login.jsp>登录</a></li>");
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
					<li style="font-size:18px;font-family:SimSun;margin-left:30px"><a href="<%=request.getContextPath()%>/user/index.jsp">主页</a></li>
					<li style="font-size:18px;font-family:SimSun;"><a href="<%=request.getContextPath()%>/product/product_copy.jsp">商品</a></li>
					<li style="font-size:18px;font-family:SimSun;"><a href="<%=request.getContextPath()%>/common/about.jsp">关于我们</a></li>
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

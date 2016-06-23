<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 
    <% 
    session.removeAttribute(Constants.USERINFO);
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		
		
		
		
	</head>
	<body>	
	
	<jsp:include page="../common/head.jsp" flush="true" />
	<!-- banner -->
		<div class="container">
				<div class="img-slider">
						<!----start-slider-script---->
					<script src="../js/responsiveslides.min.js"></script>
					 <script>
					    // You can also use "$(window).load(function() {"
					    $(function () {
					      // Slideshow 4
					      $("#slider4").responsiveSlides({
					        auto: true,
					        pager: true,
					        nav: true,
					        speed: 500,
					        namespace: "callbacks",
					        before: function () {
					          $('.events').append("<li>before event fired.</li>");
					        },
					        after: function () {
					          $('.events').append("<li>after event fired.</li>");
					        }
					      });
					
					    });
					  </script>
					<!----//End-slider-script---->
					<!-- Slideshow 4 -->
					    <div  id="top" class="callbacks_container">
					      <ul class="rslides" id="slider4">
					        <li>
					         <a href='<%=request.getContextPath()%>/product/product_copy.jsp'> <img  src="../images/forindex1.png" class="img-responsive" alt=""></a>
					          <div class="slider-caption">
					          	
					          	  
					          	  <div class="clearfix"> </div>
					          </div>
					          
					        </li>
					         <li>
					           <a href='<%=request.getContextPath()%>/product/product_copy.jsp'>  <img  src="../images/forindex2.png" class="img-responsive" alt=""></a>
					          <div class="slider-caption">
					          	 
					          	  
					          	  <div class="clearfix"> </div>
					          </div>
					         
					        </li>
					        <li>
					          <a href='<%=request.getContextPath()%>/product/product_copy.jsp'>  <img src="../images/forindex3.png" class="img-responsive" alt=""></a>
					           <div class="slider-caption">
					          	 
					          	  
					          	  <div class="clearfix"> </div>
					          </div>
					          
					        </li>
					       
					      </ul>
					    </div>
					    <div class="clearfix"> </div>
					</div>
		<!-- /banner -->

		</div>

	

	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

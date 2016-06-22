<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 

    
    
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
		
		<script src="../js/jquery.easydropdown.js"></script>
		<!----webfonts--->
		
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		
		<!-- CSS -->
		
		
		<link rel="stylesheet" href="../css/amazeui.css"/>
		<link rel="stylesheet" href="../css/amazeui.datetimepicker.css"/>
		<link rel="stylesheet" href="../css/admin.css"/>

		<script src="../js/amazeui.js"></script>
		<script src="../js/amazeui.datetimepicker.js"></script>
		
		
	</head>
	<body>	
	
	<jsp:include page="../common/head.jsp" flush="true" />

		<div class="container">
				
    <hr class="am-article-divider blog-hr">
     <article class="blog-main">
     
     
     <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">我的订单</a></li>
      <li><a href="#tab2">历史订单</a></li>
    </ul>
    
     <div class="am-tabs-bd">
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
 		<div class="am-g">
      <div class="am-u-sm-12">
     
     <table class="am-table am-table-striped am-table-hover table-main">
 <!--   这边是订单的显示，我暂时不知道订单有哪些信息 -->
 
     
   
      <tr>
      <th style="font-weight:normal">甜点</th>
      <th style="font-weight:normal">甜点名称</th>
      <th style="font-weight:normal">单价</th>
      <th style="font-weight:normal">数量</th>
      </tr>
      
      
     
     
     <tr>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">订单编号：12231</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">下定时间：2016-06-20</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">提货时间：2016-06-26</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;"></td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">12</td>
     <td style="background: #FFFFCC">4</td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">13</td>
     <td style="background: #FFFFCC">1</td>
     </tr>
     
     <tr>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC;font-weight:bold">总价：123</td>
     <td style="background: #FFFFCC;font-weight:bold"><button>取消交易</button></td>
     </tr>

     
     <tr>
     <td></td>
     <td></td>
     <td></td>
     <td></td>
     </tr>
     
     <tr>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080; ">订单编号：12231</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">下定时间：2016-06-20</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">提货时间：2016-06-26</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;"></td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">12</td>
     <td style="background: #FFFFCC">4</td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">13</td>
     <td style="background: #FFFFCC">1</td>
     </tr>
     
     <tr>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC;font-weight:bold">总价：123</td>
     <td style="background: #FFFFCC;font-weight:bold"><button>取消交易</button></td>
     </tr>
     


     </table>


      </div>
      </div>
      </div>
      
      <div class="am-tab-panel am-fade" id="tab2">
      <div class="am-g">
      <div class="am-u-sm-12">
        <table class="am-table am-table-striped am-table-hover table-main">
	
      <tr>
      <th style="font-weight:normal">甜点</th>
      <th style="font-weight:normal">甜点名称</th>
      <th style="font-weight:normal">单价</th>
      <th style="font-weight:normal">数量</th>
      </tr>
      
      
     
     
     <tr>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">订单编号：12231</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">下定时间：2016-06-20</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">提货时间：2016-06-26</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;"></td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">12</td>
     <td style="background: #FFFFCC">4</td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">13</td>
     <td style="background: #FFFFCC">1</td>
     </tr>
     
     <tr>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC;font-weight:bold">总价：123</td>

     </tr>

     
     <tr>
     <td></td>
     <td></td>
     <td></td>
     <td></td>
     </tr>
     
     <tr>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080; ">订单编号：12231</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">下定时间：2016-06-20</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;">提货时间：2016-06-26</td>
     <td style="background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;"></td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">12</td>
     <td style="background: #FFFFCC">4</td>
     </tr>
     
     
     <tr>
     <td style="background: #FFFFCC">a picture</td>
     <td style="background: #FFFFCC">XXX蛋糕</td>
     <td style="background: #FFFFCC">13</td>
     <td style="background: #FFFFCC">1</td>
     </tr>
     
     <tr>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC"></td>
     <td style="background: #FFFFCC;font-weight:bold">总价：123</td>

     </tr>
     


     </table>
	      
      </div>
      </div>
      </div>
      </div>
      </div>
     
    </article>






		</div>

	

	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

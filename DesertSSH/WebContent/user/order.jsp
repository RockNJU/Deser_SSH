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
		
		<style>
		
			.tdd{
				background: #FFCCCC;font-weight:bold;border-top:5px solid #ff8080;
			}
			
			.sptd{
				background: #FFFFCC;
			}
		</style>
		
		<script>
		
		function doAjax(url1, inf1, func1){
		    jQuery.ajax({type:"GET", url:url1,data:inf1,
		    	dataType:"json", jsonp:"callback", success:func1
			  		, error:function(){
			    alert("Ajax Error.");
				}
				}
		)}
		
		function removeOrder(src){
			var id=src.id;
			var j={'djid':id,'num':1};
		    doAjax("<%=request.getContextPath() + "/order_removeOrder.do"%>",j,back);
		}
		
		function back(data,status){
			window.location.reload();
		}
		
		function showInDateOrder(data,status){
			var content="";
			if(data.length==0){
				return;
			}
			for(var i=0;i<data.length;i++){
				
					content=content+" <tr>"+
							 "<td class='tdd'>订单编号："+data[i].orderid+"</td>"+
						     "<td class='tdd'>下定时间："+data[i].create_time+"</td>"+
							 "<td class='tdd'>提货时间："+data[i].take_time+"</td>"+
							 "<td class='tdd'></td>"+
							 "</tr>";
				
				var list=data[i].list;
				for(var j=0;j<list.length;j++){
					
					content=content+
							"<tr>"+
						    " <td class='sptd'><img src='../"+list[j].img+"' style='margin-left:20px;height:46px;weight:60px;' alt='暂不能显示' /></td>"+
						     "<td class='sptd'>"+list[j].name+"</td>"+
						     "<td class='sptd'>"+list[j].realPrice+"</td>"+
						     "<td class='sptd'>"+list[j].count+"</td>"+
						     "</tr>";
							
				}

					content=content+"<tr>"+
					    " <td class='sptd'></td>"+
					    " <td class='sptd'></td>"+
					     "<td style='background: #FFFFCC;font-weight:bold'>总价："+data[i].sum_money+"</td>"+
					     "<td style='background: #FFFFCC;font-weight:bold'><button id='"+data[i].id+"' onclick='removeOrder(this)'>取消交易</button></td>"+
					     "</tr>";	
					     
					     content=content+"<tr>"+
								     "<td> &nbsp;&nbsp;</td>"+
								     "<td></td>"+
								     "<td></td>"+
								     "<td></td>"+
								     "</tr>";	
								     
					     $('#newOrder').append(content);
					     content="";
			
			}
		}
		
		
		function loadOrderInTime(){
			var j={'spid':1,'num':1};
		    doAjax("<%=request.getContextPath() + "/order_orderListInDate.do"%>",j,showInDateOrder);
		}

		function loadOrderOutTime(){
			var j={'spid':1,'num':1};
		    doAjax("<%=request.getContextPath() + "/order_orderListOutDate.do"%>",j,showOutDateOrder);
		}
		
		function showOutDateOrder(data,status){
			var content="";
			for(var i=0;i<data.length;i++){
				
					content=content+" <tr>"+
							 "<td class='tdd'>订单编号："+data[i].orderid+"</td>"+
						     "<td class='tdd'>下定时间："+data[i].create_time+"</td>"+
							 "<td class='tdd'>提货时间："+data[i].take_time+"</td>"+
							 "<td class='tdd'></td>"+
							 "</tr>";
				
				var list=data[i].list;
				for(var j=0;j<list.length;j++){
					
					content=content+
							"<tr>"+
						    " <td class='sptd'><img src='../"+list[j].img+"' style='margin-left:20px;height:46px;weight:60px;' alt='暂不能显示' /></td>"+
						     "<td class='sptd'>"+list[j].name+"</td>"+
						     "<td class='sptd'>"+list[j].realPrice+"</td>"+
						     "<td class='sptd'>"+list[j].count+"</td>"+
						     "</tr>";
							
				}
				
				
					content=content+"<tr>"+
					    " <td class='sptd'></td>"+
					    " <td class='sptd'></td>"+
					     "<td class='sptd'></td>"+
					     "<td style='background: #FFFFCC;font-weight:bold'>总价："+data[i].sum_money+"</td>"+
					     "</tr>";	
					     
					     content=content+"<tr>"+
								     "<td> &nbsp;&nbsp;</td>"+
								     "<td></td>"+
								     "<td></td>"+
								     "<td></td>"+
								     "</tr>";	
								     
					     $('#oldOrder').append(content);
					     content="";
			}

		}
		
		
		$(document).ready(function () {
			loadOrderOutTime();
			loadOrderInTime();
		})
		
		</script>
		
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
     
     <table class="am-table am-table-striped am-table-hover table-main" id='newOrder'>
 <!--   这边是订单的显示，我暂时不知道订单有哪些信息 -->
 
     
   
      <tr>
      <th style="font-weight:normal">甜点</th>
      <th style="font-weight:normal">甜点名称</th>
      <th style="font-weight:normal">单价</th>
      <th style="font-weight:normal">数量</th>
      </tr>
      
      
 <!-- 一个部分-- -->   
     
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
<!--  -->     
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

<!--  -->     


     </table>


      </div>
      </div>
      </div>
      
      <div class="am-tab-panel am-fade" id="tab2">
      <div class="am-g">
      <div class="am-u-sm-12">
 <table class="am-table am-table-striped am-table-hover table-main"  id='oldOrder'>
	
      <tr>
      <th style="font-weight:normal">甜点</th>
      <th style="font-weight:normal">甜点名称</th>
      <th style="font-weight:normal">单价</th>
      <th style="font-weight:normal">数量</th>
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
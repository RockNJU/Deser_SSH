<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>甜点屋</title>

<link href="<%=request.getContextPath()%>/product/css/cartTable.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/style.css" rel='stylesheet' type='text/css' />
		<link href="<%=request.getContextPath()%>/css/mystyle.css" rel='stylesheet' type='text/css' />
<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel='stylesheet' type='text/css' />

  
<script type="text/javascript" src="<%=request.getContextPath()%>/product/js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/product/js/Calculation.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	//jquery特效制作复选框全选反选取消(无插件)
	// 全选        
	$(".allselect").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", true);
			// $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		});
		GetCount();
	});

	//反选
	$("#invert").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			if ($(this).attr("checked")) {
				$(this).attr("checked", false);
				//$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
			} else {
				$(this).attr("checked", true);
				//$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
			} 
		});
		GetCount();
	});

	//取消
	$("#cancel").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", false);
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		});
		GetCount();
	});

	// 所有复选(:checkbox)框点击事件
	$(".gwc_tb2 input[name=newslist]").click(function () {
		if ($(this).attr("checked")) {
			//$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
			//GetCount();
		} else {
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
			//GetCount();
		}
	});

	// 输出
	$(".gwc_tb2 input[name=newslist]").click(function () {
		alert('------');
		// $("#total2").html() = GetCount($(this));
		GetCount();
		//alert(conts);
	});
	
	loadCartProduct();
	
	$("#jz1").css("display", "none");
	$("#jz2").css("display", "none");
});
//******************
function GetCount() {
	var conts = 0;
	var aa = 0;
	var sum=0;
	//var idt="#total"+data[i].id;
	//$(idt).html((parseInt($("#text_box"+data[i].id).val()) * data[i].realPrice).toFixed(2));
	$(".gwc_tb2 input[name=newslist]").each(function () {
		if ($(this).attr("checked")) {
			for (var i = 0; i < $(this).length; i++) {
				var id=$(this).val();
				sum=sum+parseInt($("#text_box"+id).val()) * Number($('#price_'+id).text());
			//	conts += parseInt($(this).val());
			//alert('*-*-*-*-:   '+$("#price_"+id).text());
				aa += 1;
			}
		}
	});
	$("#shuliang").text(aa);
	$("#zong1").html((sum).toFixed(2));
	
	if(aa==0){
		$("#jz1").css("display", "none");
		$("#jz2").css("display", "none");
	}else{
		$("#jz1").css("display", "none");
		$("#jz2").css("display", "block");
	}
		
	
	
}

function doAjax(url1, inf1, func1){
    jQuery.ajax({type:"GET", url:url1,data:inf1,
    	dataType:"json", jsonp:"callback", success:func1
	  		, error:function(){
	    alert("Ajax Error.");
		}
		}
)}


function loadCartProduct(){
	//alert('加载数据---');
	var j={'spid':1,'num':1};
    doAjax("<%=request.getContextPath() + "/order_cartProductList.do"%>",j,showCartProduct);
}

function deleteProductInCart(src){
	var str=src.id;
	var id=str.split('_');
	var j={'id':id[1],'num':1};
	doAjax("<%=request.getContextPath() + "/order_deleteProductInChart.do"%>",j,modifyNumBack);
}


function submitOrder(){
	 var aa = document.getElementsByClassName("item_cart");
    var ss = "";
    for (var i = 0; i < aa.length; i++) {
        if (aa[i].checked) {
        	ss=aa[i].value+"-"+ss;
          //  alert("---要提交的商品---> "+aa[i].value);
        }
    }
    
    var j="idlist="+ss;
    
    window.location.href='<%=request.getContextPath()%>/order_orderConfirm.do?'+j; 
    
}

function submitOrderBack(){
	
}


function showCartProduct(data,status){
	//$("#table_head").after("<p>姚明退役了...</p>"); 
	//alert('---加载数据--');
	if(data.length==0){
		$("#table_head").after("<a href='../product/product_copy.jsp'>您还没有添加任何甜点，先去挑选您喜爱的甜点吧！</a>");
	}
	
	for(var i=0;i<data.length;i++){
		$("#table_head").after("<table cellpadding='0' cellspacing='0' class='gwc_tb2' id='tab_"+data[i].id+"'>"+
									"<tr>"+
										"<td class='tb2_td1'><input type='checkbox'class='item_cart' value='"+data[i].id+"' name='newslist' id='newslist-"+data[i].id+"' onclick='GetCount()'/></td>"+
										"<td class='tb2_td2'><a href='#'>"+data[i].name+"</a> </td>"+
										"<td class='tb2_td3'><a href='#'><img src='"+$('#path').val()+"/"+data[i].img+"'/></a></td>"+
										"<td class='tb2_td4' id='price_"+data[i].id+"'>"+data[i].realPrice+"</td>"+
										"<td class='tb2_td5'>"+
											"<input id='min1' name='"+data[i].id+"' class='minus'  type='button' value='-' onclick='minusNum(this)'/>"+
											"<input id='text_box"+data[i].id+"' class='num' name='' type='text' value='"+data[i].count+"' />"+
											"<input id='add1' class='add' name='"+data[i].id+"'  type='button' value='+' onclick='addNum(this)'/>"+
										"</td>"+
										"<td class='tb2_td6'><label id='total"+data[i].id+"' class='tot' style='color:#ff5500;font-size:14px; font-weight:bold;'></label></td>"+
										"<td class='tb2_td7'><a href='#' id='del_"+data[i].id+"' onclick='deleteProductInCart(this)'>删除</a></td>"+
									"</tr>"+
									
								"</table>");
		
		var idt="#total"+data[i].id;
		$(idt).html((parseInt($("#text_box"+data[i].id).val()) * data[i].realPrice).toFixed(2));
	}
	
	
}

</script>

	<style>
	
		.minus{
			width:20px;
			height:18px;
			border:1px solid #ccc;
		}
		
		.add{
			 width:20px;
			 height:18px;
			 border:1px solid #ccc;
		}	
		
		.num{
			 width:30px; text-align:center; border:1px solid #ccc;
		}
	</style>


</head>
<body>
	<jsp:include page="../common/head.jsp" flush="true" />
	<!---start-content----->
	<div class="content">
	<div class="container">
	
	<!---商品加减算总数---->
	<script type="text/javascript">
		function addNum(src){
			var spid=src.name;
			var j={'id':spid,'num':1};
		    doAjax("<%=request.getContextPath() + "/order_addUpProductToCart.do"%>",j,modifyNumBack);
		}
		
		function minusNum(src){
			var spid=src.name;
			var j={'id':spid,'num':1};
		    doAjax("<%=request.getContextPath() + "/order_minusProductToCart.do"%>",j,modifyNumBack);
		}
		
		function modifyNumBack(data,status){
			window.location.reload();
			GetCount();
			//alert('重新加载页面');
		}
	</script>

<div class="gwc" style=" margin:auto;min-height:480px;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1"  id='table_head'>
		<tr>
			<td class="tb1_td1"><input id="Checkbox1" type="checkbox"  class="allselect"/></td>
			<td class="tb1_td1">全选</td>
			<td class="tb1_td2">商品名称</td>
			<td class="tb1_td3">商品信息</td>
			<td class="tb1_td4">单价</td>
			<td class="tb1_td5">数量</td>
			<td class="tb1_td6">总价</td>
			<td class="tb1_td7">操作</td>
		</tr>
	</table>
		   
	
	<!---总数---->
	<script type="text/javascript">
	$(function () {
		$(".quanxun").click(function () {
			setTotal();
			//alert($(lens[0]).text());
		});
		function setTotal() {
			var len = $(".tot");
			var num = 0;
			for (var i = 0; i < len.length; i++) {
				num = parseInt(num) + parseInt($(len[i]).text());

			}
			//alert(len.length);
			$("#zong1").text(parseInt(num).toFixed(2));
			$("#shuliang").text(len.length);
		}
		//setTotal();
	})
	
	
	
	</script>
	
	<input value='<%=request.getContextPath()%>' id='path' hidden='true' />
	<table cellpadding="0" cellspacing="0" class="gwc_tb3">
		<tr>
			<td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox" /></td>
			<td class="tb3_td1">全选   
				<input id="invert" type="checkbox" />反选   
				<input id="cancel" type="checkbox" />取消全选</td>
			
			<td class="tb3_td2">已选商品 <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
			<td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span></td>
			<td class="tb3_td4"><span id="jz1" onclick='submitOrder()'>结算</span><a href="#" style=" display:none;"  class="jz2" id="jz2" onclick='submitOrder()'>结算</a></td>
		</tr>
	</table>

</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</div>
</div>
	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
</body>
</html>
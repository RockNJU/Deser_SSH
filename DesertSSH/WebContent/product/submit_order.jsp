<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-Type" content="text/html; charset=gb2312" />
<title>甜点屋-提交订单</title>

<link href="../product/css/cartTable.css" rel="stylesheet" type="text/css" />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<link href="../css/mystyle.css" rel='stylesheet' type='text/css' />
<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="../product/js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="../product/js/Calculation.js"></script>

<script type="text/javascript">

var list=[
{"name":"玄武区",
"value":"xw",
"store":[{"name":"大行宫店",
"value":"dxg"},
{"name":"珠江路店",
"value":"zjl"},
{"name":"新街口店",
	"value":"xjk"}
]},
{"name":"秦淮区",
	"value":"qh",
	"store":[{"name":"洪武路店",
	"value":"hwl"},
	{"name":"夫子庙店",
	"value":"fzm"},
	{"name":"长白街店",
		"value":"cbj"}
]},
{"name":"建邺区",
	"value":"jy",
	"store":[{"name":"兴隆大街店",
	"value":"xldj"},
	{"name":"应天大街店",
	"value":"ytdj"},
	{"name":"河西万达店",
		"value":"hxwd"}
]},
{"name":"鼓楼区",
	"value":"gl",
	"store":[{"name":"湖南路店",
	"value":"hnl"},
	{"name":"华侨路店",
	"value":"hql"},
	{"name":"中央门店",
		"value":"zym"}
]},
{"name":"栖霞区",
	"value":"qx",
	"store":[{"name":"马群店",
	"value":"mq"},
	{"name":"仙林中心店",
	"value":"xlzx"},
	{"name":"仙鹤门店",
		"value":"xhm"}
]},
{"name":"江宁区",
	"value":"jn",
	"store":[{"name":"将军路店",
	"value":"jjl"},
	{"name":"河定桥店",
	"value":"hdq"},
	{"name":"百家湖店",
		"value":"bjh"}
]}];

function init(){
var _block=document.getElementById("block");
for(var e in list){
var opt_1=new Option(list[e].name,list[e].value);
_block.add(opt_1);
}
}



function toStore(){
var _block=document.getElementById("block");
var _store=document.getElementById("store");
var v_block=_block.value;

_store.options.length=1;


for(var e in list){
if(list[e].value==v_block){
for( var p in list[e].store){
var opt_2=new Option(list[e].store[p].name,list[e].store[p].value);
_store.add(opt_2);

}
break;
}
}
}

function validateGet(){
	
	var phone=$('#tele').val();
	var customName=$('#customName').val();
	var province=$('#province').val();
	var city=$('#city').val();
	var block=$('#block option:selected').text();
	var store=$('#store option:selected').text();
	var address="提货店铺： "+province+city+block+store;
	var customInfo="提货人信息：         "+customName+"    "+phone;
	
	$('#hiddenDiv').html("");
	if($('#store option:selected').val()=="-1"){
		$('#hiddenDiv').append("请选择店铺");
	}else if(customName==""){
		$('#hiddenDiv').append("请填写提货人姓名");
	}else if(!(/^\d{11}$/.test(phone))){
		$('#hiddenDiv').append("请填写正确的手机号码");
	}else{
		$('#orderInfo').html("");
		$('#orderInfo').append(address+"<br>");
		$('#orderInfo').append(customInfo+"<br>");
		$('#orderInfo').append("支付金额：  70"+"<br>");
	}
	
}

function validatePost(){
	
	var phone=$('#tele2').val();
	var customName=$('#customName2').val();
	var province=$('#province').val();
	var city=$('#city').val();
	var block=$('#block2 option:selected').text();
	var detailAddress=$('#detailAddress').val();
	var address="收货地址： "+province+city+block+detailAddress;
	var customInfo="收货人信息：         "+customName+"    "+phone;
	
	$('#hiddenDiv2').html("");
	
	
	if($('#block2 option:selected').val()=="-1"){
		$('#hiddenDiv2').append("请选择分区");
	}else if(detailAddress==""){
		$('#hiddenDiv2').append("请填写详细地址");
	}else if(customName==""){
		$('#hiddenDiv2').append("请填写收货人姓名");
	}else if(!(/^\d{11}$/.test(phone))){
		$('#hiddenDiv2').append("请填写正确的手机号码");
	}else{
		$('#orderInfo2').html("");
		$('#orderInfo2').append(address+"<br>");
		$('#orderInfo2').append(customInfo+"<br>");
		$('#orderInfo2').append("支付金额：  70"+"<br>");
		
		
		
	}
	
}

</script> 

</head>
<body onload="init();";>
	<jsp:include page="../common/head.jsp" flush="true" />
	<!---start-content----->
	<div class="content">
	<div class="container">
	  
	  <div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td1" style="font-size:15px;text-align:left;"> &nbsp&nbsp&nbsp&nbsp确认收货方式</td>
		</tr>
	</table>
	
	<br>
    &nbsp&nbsp&nbsp&nbsp
    <input name=sel value=get type=radio onclick="formStore.style.display='';orderInfo.style.display='';formAddress.style.display='none';orderInfo2.style.display='none';" checked/><a style="font-size:14px" >&nbsp&nbsp门店自提</a>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input name=sel value=post type=radio onclick="formStore.style.display='none';orderInfo.style.display='none';formAddress.style.display='';orderInfo2.style.display='';"/><a style="font-size:14px" >&nbsp&nbsp送货上门</a><br><br>
    
    
    <div id=formStore>
    <form><a style="font-size:14px">&nbsp&nbsp&nbsp&nbsp选择提货店铺</a>
    <br><input name=province id="province" type="text" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;" disabled="disabled" value="江苏省">
        <input name=city id="city" type="text" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;" disabled="disabled" value="南京市">
        <select id="block" onchange="toStore();"style="width:130px;height:30px;font-size:14px;text-align:center;background:none;">
        <option value="-1">--请选择分区---</option>
        </select> 
        <select id="store" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;">
        <option value="-1">--请选择店铺---</option>
        </select> 
    </form>
    <br>
     <form><a style="font-size:14px">&nbsp&nbsp&nbsp&nbsp填写提货人信息</a>
    <br>
    
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input name=customName id="customName" type="text" style="border:1px gray solid;width:150px;height:30px;font-size:14px;" placeholder="&nbsp&nbsp提货人姓名">
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input name=tele id="tele" type="text" style="border:1px gray solid;width:150px;height:30px;font-size:14px;" placeholder="&nbsp&nbsp联系电话">
     <span id="hiddenDiv" style="float:center;color:red;font-size:12px;"></span>
    <input type=button onclick='validateGet()'style="width:100px; height:26px;font-size:14px;color:#fff; background:#ff8c8c;float:right;"value="确认提货信息">
    </form>
    </div>
    
    <div id=formAddress style="display:none">
    <form><a style="font-size:14px">&nbsp&nbsp&nbsp&nbsp选择收货地址</a>
    <br><input name=province id="province" type="text" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;" disabled="disabled" value="江苏省">
        <input name=city id="city" type="text" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;" disabled="disabled" value="南京市">
        <select id="block2" style="width:130px;height:30px;font-size:14px;text-align:center;background:none;">
        <option value="-1">--请选择分区---</option>
        <option value="xw">玄武区</option>
        <option value="qh">秦淮区</option>
        <option value="jy">建邺区</option>
        <option value="gl">鼓楼区</option>
        <option value="qx">栖霞区</option>
        <option value="jn">江宁区</option>
        <option value="qx">浦口区</option>
        <option value="jn">白下区</option>
        <option value="qx">雨花台区</option>
        <option value="jn">六合区</option>
        <option value="qx">下关区</option>
        
        
        </select> 
           &nbsp&nbsp&nbsp&nbsp
           <input name=detailAddress id="detailAddress" type="text" style="border:1px gray solid;width:250px;height:30px;font-size:14px;" placeholder="&nbsp&nbsp详细地址">
    </form>
    <br>
     <form><a style="font-size:14px">&nbsp&nbsp&nbsp&nbsp填写收货人信息</a>
    <br>
    
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input name=customName2 id="customName2" type="text" style="border:1px gray solid;width:150px;height:30px;font-size:14px;" placeholder="&nbsp&nbsp提货人姓名">
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input name=tele2 id="tele2" type="text" style="border:1px gray solid;width:150px;height:30px;font-size:14px;" placeholder="&nbsp&nbsp联系电话">
     <span id="hiddenDiv2" style="float:center;color:red;font-size:12px;"></span>
    <input type=button onclick='validatePost()'style="width:100px; height:26px;font-size:14px;color:#fff; background:#ff8c8c;float:right;"value="确认收货信息">
    </form>
    </div>
    </div> 
    
   <div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td1" style="font-size:15px;text-align:left;"> &nbsp&nbsp&nbsp&nbsp确认订单信息</td>
		</tr>
		
		<tr>
			
			<td class="tb1_td2" style="width:180px;">商品名称</td>
			<td class="tb1_td3" style="width:180px;">商品信息</td>
			<td class="tb1_td4" style="width:180px;">单价</td>
			<td class="tb1_td5" style="width:180px;">数量</td>
			<td class="tb1_td6" style="width:180px;">总价</td>
			
		</tr>
		
	</table>
	
		<table cellpadding="0" cellspacing="0" class="gwc_tb2">
		<tr>
			
			<td class="tb2_td2" style="width:180px;"><a href="#">法式焦糖玛奇朵巧克力</a></td>
			<td class="tb2_td3" style="width:180px;"><a href="#"><img style="width: 60px;height:60px;" src="../images/11.jpg"/></a></td>
			<td class="tb2_td4" style="width:180px;">9.0</td>
			<td class="tb2_td5" style="width:180px;font-weight:normal;font-size:14px;">3</td>
			<td class="tb2_td6" style="width:180px;color:#ff5500;font-size:14px; font-weight:bold;">27.0</td>
		</tr>
	</table>
	
		<table cellpadding="0" cellspacing="0" class="gwc_tb3">
		<tr>
			<td id="orderInfo" class="tb3_td4" style="width:400px;font-size:14px;text-align:left;"></td>
			<td id="orderInfo2" style.display="none" class="tb3_td4" style="width:400px;font-size:14px;text-align:left;"></td>
			<td><span id="jz2" class="jz2" style="height:46px;">结算</span></td>
			
			
		<br>
		</tr>
	</table>
	</div>
	  



</div>
</div>
	<!-- footer -->
	<%@ include file= "../common/footer.jsp"%>
	<!-- /footer -->
</body>
</html>
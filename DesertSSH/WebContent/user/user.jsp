<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.home.desert.pubutil.*" %> 

    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>甜点屋</title>
		
		<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
	 <script src="<%=request.getContextPath() + "/js/jquery.min.js"%>"></script>
		 <!-- Custom Theme files -->
		
		<link href="<%=request.getContextPath()%>/css/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
   		
   		<meta name="viewport" content="width=device-width, initial-scale=1">
   		
   		
   		
		<script src="<%=request.getContextPath()%>/js/sweetalert.min.js"></script>
		<link href="<%=request.getContextPath()%>/css/sweetalert.css" rel="stylesheet" type="text/css" media="all" />
		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		
		<!----webfonts--->
		
		<link href='http://fonts.useso.com/css?family=Open+Sans:300,700,800,400,600' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		
		<!-- CSS -->
		
		
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/amazeui.css"/>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/amazeui.datetimepicker.css"/>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css"/>

		<script src="<%=request.getContextPath()%>/js/amazeui.js"></script>
		<script src="<%=request.getContextPath()%>/js/amazeui.datetimepicker.js"></script>

		
		
		
		
		
		<!-- 按钮可编辑修改-->
		<script>
            var change = function(){
            	document.getElementById("name").removeAttribute("disabled");
            	document.getElementById("phone").removeAttribute("disabled");
            	document.getElementById("address_qu").removeAttribute("disabled");
            	document.getElementById("address3").removeAttribute("disabled");
            	document.getElementById("address1_qu").removeAttribute("disabled");
            	document.getElementById("address13").removeAttribute("disabled");
            }
		</script>      
		
    <!-- 按钮可编辑修改-->
    
         
         <script language="javascript">
         
         
         
         
         	function doAjax(url1, inf1, func1){
        	    jQuery.ajax({type:"GET", url:url1,data:inf1,
        	    	dataType:"json", jsonp:"callback", success:func1
        		  		, error:function(XMLHttpRequest, textStatus, errorThrown){
        		  			alert(XMLHttpRequest.status);
        	                alert(XMLHttpRequest.readyState);
        	                alert(textStatus);
        			}
        			}
        	)}
         
            //修改个人信息 
         	function save(){
        	 	document.getElementById("name").setAttribute("disabled","true");
          	 	document.getElementById("phone").setAttribute("disabled","true");
          	 	document.getElementById("address_qu").setAttribute("disabled","true");
          	 	document.getElementById("address3").setAttribute("disabled","true");
          	 	document.getElementById("address1_qu").setAttribute("disabled","true");
          	 	document.getElementById("address13").setAttribute("disabled","true");
        		//alert('加载数据---');
        		var j={'name':$('#name').val(),
        				'phone':$('#phone').val(),
        				'address':$('#address1').val()+$('#address1_qu option:selected').text()+$('#address13').val()
        		};
        		//alert("add:"+$('#address1').val()+$('#address1_qu option:selected').text()+$('#address13').val());
        	    doAjax("<%=request.getContextPath() + "/user_updateInfo.do"%>",j,successBack);
        	 }

				function successBack(data,status){
					$('#backInfo').html('');
					$('#backInfo').append("<span><strong>"+data.name+"</strong></span>");
				}
			
               //充值记录
               function recharge(){
        	 	//充值应该是需要金额和卡号就可以了吧。。毕竟没有密码验证
        		//alert('加载数据---');
        		var j={'money':$('#money').val(),
        				'card_number':$('#number').val()
        		};
        	    doAjax("<%=request.getContextPath() + "/user_recharge.do"%>",j,successRecharge);
        	}

				function successRecharge(data,status){
					$('#recharInfo').html('');
					$('#recharInfo').append('<strong>充值成功！</strong>');
					var num=Number($('#left').val())+Number($('#money').val());
					$('#left').val(num);
					
        		}

				            
				       
				// });
				
				function modifypwd(){
					 $("#oldpassword").blur(function(){})
					 var j={'password':$('#oldpwd').val(),
			        		};
					doAjax("<%=request.getContextPath() + "/user_surePassWord.do"%>",j,showResult);
					
					
				}
				
				function showResult(data,status){
					if(data.name=='true'){
						
						
							//alert("sdaada");
							var p={'password':$('#pwd').val(),
			        				'pwd':$('#pwdConfig').val(),
			        		
			        		
			        		};
			        	    doAjax("<%=request.getContextPath() + "/user_modifyPassword.do"%>",p,showResult2);
			        	    $("#pwd").val("");
							$("#oldpwd").val("");
							$("#pwdConfig").val("");
						
					}else{
						  swal({   
								title: "密码错误",   
								html: true,
								timer: 1000,   
								showConfirmButton: false
							});
						  
						$("#pwd").val("");
						$("#oldpwd").val("");
						$("#pwdConfig").val("");
					}
					
				}
				function showResult2(data,status){
					var info=data.name;
					
					  swal({   
							title: info,   
							html: true,
							timer: 1000,   
							showConfirmButton: false
						});
				}
				
           
            </script>
		 
		
	 <script>
	 
	 function loadPayrecord(){
		 var j={'money':1,
 				'number':1};
 	    doAjax("<%=request.getContextPath() + "/user_payRecord.do"%>",j,addPayrecord1);
	 }
	 
	 function t(data,status){
		 
	 }
	 
	 	function addPayrecord1(data,status){
	 		//alert('--回调成功--');
			 for(var i=0;i<data.length;i++){
			//	 alert('加载数据----->');
					 var x=i+1
							$('#payRecord').append("<tr>"+
      							"<td>"+x+"</td>"+
      							"<td>"+data[i].time+"</td>"+
      							"<td>"+data[i].money+"</td>"+
      							"<td>"+data[i].card_number+"</td>"+
      						"</tr>");
					 }
	 }
	 	
	 	
	 
    $(document).ready(function(){           
    	loadPayrecord();
    	
        $("#oldpwd").blur(function(){
                var param=$("#oldpwd").val();
                $.ajax({
                    url:"<%=request.getContextPath()+"/user_surePassword.do"%>",                
                    data:{password:param},                 
                    success:function(e){
                        if(e.code){                            
                             $("#tip1").html("<font color=\"green\" size=\"2\">  原密码密码正确！</font>");
                        } 
                        else{                                 
                            $("#tip1").html("<font color=\"red\" size=\"2\">  原密码错误！</font>");
                        }
                    }                 
                });
           });
          
          $("#pwdConfig").blur(function(){
              var tmp=$("#pwd").val();
             
              if($("#pwdConfig").val()!=tmp){
                  $("#tip3").html("<font color=\"red\" size=\"2\">  两次密码不一致</font>");                 
              }
              
          });
              $("#btn").click(function(){
                  var flag=true;
                  var old=$("#oldpwd").val();
                  var pass=$("#pwd").val();
                  var pass2=$("#pwdConfig").val();
                  var num1=$("#pwd").val().length;
                  var num2=$("#pwdConfig").val().length;
                  if(pass!=pass2){
                      flag=false;
                  }
                  else{
                      flag=true;
                  }
                  if(flag){                   
                  $.ajax({
                      url:"${HttpPath}/user_modifyPassword.do",
                      data:{password:old,pwd:pass},
                      success:function(e){                         
                          if(e.code){
                              $("#tip4").show().html("<font color=\"green\" size=\"3\">  修改成功!</font>");
                              $("#oldpwd").val("");
                              $("#pwd").val("");
                              $("#pwdConfig").val("");
                              $("#tip1").empty();
                              $("#tip2").empty();
                              $("#tip3").empty();
                              $("#tip4").delay(2000).hide(0);        
                          }
                          else{
                              $("#tip4").show().html("<font color=\"red\" size=\"3\">  原密码输入错误！!</font>");
                          }                                     
                         }
                  });
              }       
              });                  
        });
        </script>
		  
		 
		  
	</head>
	<body>	
	
						
	<jsp:include page="../common/head.jsp" flush="true" />
	<!-- banner -->
		<div class="container">
				 <hr class="am-article-divider blog-hr">
    
    <br>
    <article class="blog-main">
     
     <jsp:useBean id="userInfo" class="com.home.desert.pogo.User" 
						scope="session"></jsp:useBean>
						
	<div class="am-tabs am-margin" data-am-tabs>
    	<ul class="am-tabs-nav am-nav am-nav-tabs">
      		<li class="am-active"><a href="#tab1">个人信息</a></li>
      		<li><a href="#tab2">会员充值</a></li>
      		<li><a href="#tab3">密码修改</a></li>
      		<li><a href="#tab4">充值记录</a></li>
    	</ul>
    
    
    
    	<div class="am-tabs-bd">
			<div class="am-tab-panel am-fade am-in am-active" id="tab1">
				<div class="am-g">
					<div class="user-tab">
                    <!-- 这边是个人信息填充的地方， -->
                    <br>
                    <br>         
                    <span><font color="#5a0f16">用&nbsp&nbsp户&nbsp&nbsp名&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='name' name='name' value='<jsp:getProperty name="userInfo" property="name" />' disabled='true'> </span>
					
					<br>
					<span><font color="#5a0f16">性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='sex' name='sex' value='<jsp:getProperty name="userInfo" property="sex" />' disabled='true'> </span>
						
					<br>
					<span><font color="#5a0f16">邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='email' name='email' value='<jsp:getProperty name="userInfo" property="mail" />' disabled='true'> </span>
						
						
					<br>
					<span><font color="#5a0f16">手&nbsp&nbsp机&nbsp&nbsp号&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='phone' name='phone' value='<jsp:getProperty name="userInfo" property="phone" />' disabled='true'> </span>
					
					
					
					
					<br>
					<span><font color="#5a0f16">地&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp址&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='address' name='address' value='江苏省南京市' style='width: 15%;' disabled='true'>
					
					<select name="address_qu"  id="address_qu" value="鼓楼区" style='width: 14.5%;border: 1px solid #c0c0c0;outline-color:#FF6392;padding: 0.4em;color:#2d2d2d;	font-size:15px;' disabled='true'>
					    <option value="玄武区">玄武区</option>
						<option value="白下区">白下区</option>
						<option value="秦淮区">秦淮区</option>
						<option value="建邺区">建邺区</option>
						<option value="鼓楼区">鼓楼区</option>
						<option value="下关区">下关区</option>
						<option value="浦口区">浦口区</option>
						<option value="栖霞区">栖霞区</option>
						<option value="雨花台区">雨花台区</option>
						<option value="江宁区">江宁区</option>
						<option value="六合区">六合区</option>
    				</select>					
					</span>
					<span><font color="#5a0f16">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font><input type="text" id='address3' name='address3' value='汉口路22号南京大学南园5舍' style='width: 30%;' disabled='true'> </span>
					
					<br>
					<span><font color="#5a0f16">备用地址&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id='address1' name='address1' value='江苏省南京市' style='width: 15%;' disabled='true'>
					
					<select name="address1_qu"  id="address1_qu" value="鼓楼区" style='width: 14.5%;border: 1px solid #c0c0c0;outline-color:#FF6392;padding: 0.4em;color:#2d2d2d;	font-size:15px;' disabled='true'>
					    
    					<option value="玄武区">玄武区</option>
						<option value="白下区">白下区</option>
						<option value="秦淮区">秦淮区</option>
						<option value="建邺区">建邺区</option>
						<option value="鼓楼区">鼓楼区</option>
						<option value="下关区">下关区</option>
						<option value="浦口区">浦口区</option>
						<option value="栖霞区">栖霞区</option>
						<option value="雨花台区">雨花台区</option>
						<option value="江宁区">江宁区</option>
						<option value="六合区">六合区</option>
    				</select>					
					</span>
					<span><font color="#5a0f16">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font><input type="text" id='address13' name='address13' value='汉口路22号南京大学南园5舍' style='width: 30%;' disabled='true'> </span>
					<br>
						<div id='backInfo'></div>
					<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="button" id='change' name='change' value='修改' onclick="change()">
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<input type="button" id='save' name='save' value='保存' onclick="save()">
      				</div>
      			</div>
      		</div>
      
     	 	<div class="am-tab-panel am-fade" id="tab2">
     	 		<div class="am-g">
      				<div class="user-tab" style="margin-left:50px">
  						<br>
  						<br>
  						<div class="col-md-6 user-left wow fadeInRight">
  						
  						<span><font color="#5a0f16">帐号等级&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id="rank" value="<jsp:getProperty name="userInfo" property="rank" />" disabled='true'> </span>
					
						
  						
                    	<br>         
                    	<span><font color="#5a0f16">账户状态&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id="state" value="<jsp:getProperty name="userInfo" property="state" />" disabled='true'> </span>
					
							
						<br>         
                    	<span><font color="#5a0f16">账户余额&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text"  id="left" value="<jsp:getProperty name="userInfo" property="balance" />" disabled='true'> </span>
					
						
						<br>         
                    	<span><font color="#5a0f16">现有积分&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text"  id="point" value="<jsp:getProperty name="userInfo" property="point" />" disabled='true'> </span>
					
  						
  						
  						</div>
  						
  						
  						
  						
						<div class="col-md-6 user-right wow fadeInRight">
						       
                    	<span id='recharInfo'></span>
                    	<span><font color="#5a0f16">充值金额&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text" id="money" value="100.00"> </span>
					
							
						<br>         
                    	<span><font color="#5a0f16">银行卡号&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="text"  id="number"> </span>
					
						
						<br>         
                    	<span><font color="#5a0f16">银行密码&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="password"  id="password"> </span>
					
						<br>
					
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					
						<input type="button" id='save' name='save' value='确认' onclick="recharge()">
	     				 </div>
	                   
     				</div>
      			</div>
      		</div>
      		
      		<div class="am-tab-panel am-fade" id="tab3">
     	 		<div class="am-g">
      				<div class="user-tab">
                         <br>
                    	<br>         
                    	<span><font color="#5a0f16">原&nbsp&nbsp密&nbsp&nbsp码&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="password"  id="oldpwd"> </span><div style="display: inline" id="tip1"></div>
					
							
						<br>         
                    	<span><font color="#5a0f16">新&nbsp&nbsp密&nbsp&nbsp码&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="password"  id="pwd"> </span>
                    <div style="display: inline" id="tip2">
					
						
						<br>         
                    	<span><font color="#5a0f16">密码确认&nbsp&nbsp:&nbsp&nbsp&nbsp</font><input type="password"  id="pwdConfig"> </span><div style="display: inline" id="tip3">                                       
					
					<br>
					
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					
						<input type="button" id='save' name='save' value='确认' onclick="modifypwd()">
	                    <div id="tip4"></div>
     				</div>
      			</div>
      		</div>
      		</div>
      	</div>
      		
      		<div class="am-tab-panel am-fade" id="tab4">
     	 		<div class="am-g">
      				<div class="user-tab" style="margin-left:10px">
                        <br>
                        
                    	<table class="am-table am-table-striped am-table-hover table-main" id='payRecord'>
 							<!--   表格信息 -->
      						<tr>
     						 	<th style="background:#ffcccc">序号</th>
      							<th style="background:#ffcccc">充值时间</th>
      							<th style="background:#ffcccc">金额</th>
      							<th style="background:#ffcccc">银行账号</th>
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

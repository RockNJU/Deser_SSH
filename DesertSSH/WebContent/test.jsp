<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Structs Testing</title>
		<script src="<%=request.getContextPath() + "/js/jquery-1.5.1.js"%>"></script>
		<script src="<%=request.getContextPath() + "/js/doAjax.js"%>"></script>
		<script>
			
		
		
		 function loadPayrecord(){
			 var j={'money':1,
	 				'number':1};
	 	    doAjax("<%=request.getContextPath() + "/user_payRecord.do"%>",j,t);
		 }
		 
		 function t(data){
			// alert("--------丛植回调成功-----");
		 }
		
	   window.onload=loadPayrecord();
	    
		</script>
		
	</head>
	
	<body>
		<p id='pp'>Hello World! I am using SSH.</p>
	</body>
</html>
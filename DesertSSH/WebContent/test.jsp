<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Structs Testing</title>
		<script src="<%=request.getContextPath() + "/js/jquery-1.5.1.js"%>"></script>
		<script src="<%=request.getContextPath() + "/js/doAjax.js"%>"></script>
		<script>
			
		
		function back(data,status){
			alert("测试回调成功！");
			//$('#pp').html(data.name);
		}
		
		function refresh(){
	    	var j={'year':'123'};
	        doAjax("<%=request.getContextPath() + "/user_sayHello.do"%>",j,back);
	    }
	    
	    $(document).ready(function(){
	    	refresh();
	    })
	    
		</script>
		
	</head>
	
	<body>
		<p id='pp'>Hello World! I am using SSH.</p>
	</body>
</html>
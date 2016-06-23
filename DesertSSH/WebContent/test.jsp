<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Structs Testing</title>
		<script src="<%=request.getContextPath() + "/js/jquery.min.js"%>"></script>
		
		<script>
			//alert('--------feng  l ------');
		
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
	
	  function loadCategory(){
		  var j={'category':'all'};
	        doAjax("<%=request.getContextPath() + "/user_payRecord.do"%>",j,listCategory);
	  }
	  
	  function listCategory(data,status){
		 alert('----hahahhahhahhaha----');
	  }
	  
	  $(document).ready(function($){
			loadCategory();
	  });
	    
		</script>
		
	</head>
	
	<body>
		<p id='pp'>Hello World! I am using SSH.</p>
	</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<!-- <spring:url value="/resources/js/jquery-1.9.1.min.js" var="jqueryJs"></spring:url> -->
	<script src="resources/js/jquery-1.9.1.min.js"></script>
	
</head>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div>
<button type="submit" id="bth-search"
						class="btn btn-primary btn-lg">Search</button>
</div>

<script>
  $(document).ready(function(){
	  function submitData(){
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "test/one/",
				contentType : "application/json; charset=UTF-8",
				data : JSON.stringify({
		            "termId" : 30
		        }),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					console.log(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
				},
				done : function(e) {
					console.log("DONE");
				}
		});
		}
		$('#bth-search').click(submitData);
  });
	
	
</script>
</html>
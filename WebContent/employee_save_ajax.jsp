<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:set var="namespace" scope="request">/employee</s:set>
<!DOCTYPE html>
<html>
<head>
<title>Employee Management System</title>

<script src="<s:url value="/js/jquery-3.3.1.min.js" />" type="text/javascript"></script>
<script src="<s:url value="/js/jquery.validate.min.js" />" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$("#registerForm").validate({
		rules : {
			email : {
				required:true,
				email: true
			},
			firstName : {
				required:true
			},
			lastName : {
				required:true
			}
		}
	});
});
</script>

<script>
	function saveAjax(){
	  	var firstName = $("#firstName").val();
	  	var lastName = $("#lastName").val();
	  	var email =	$("#email").val();
	  	//var strutstokenname = $("input[name=struts.token.name]").val();
	  	var token = $("input[name=token]").val();	  	
	  	//alert(firstName+lastName+email +token);
	  	$.ajax({
            type: "POST",
            url: '<s:url action="saveAjax" namespace="/employee" />',
            data: { "firstName": firstName, "lastName": lastName, "email":email, "struts.token.name" :"token","token":token },
            dataType : "json",
			async: true,
            cache: true,
            success: function(data){
            	console.log("success" + JSON.stringify(data));
            	if(data){
            		userExist = true;		                		
            	}
            },
            error : function(data) {
				console.log(JSON.stringify(data.responseText));
				$("html").html(data.responseText);
			}
            
        });
	  	
	}
</script>


</head>
<body>
	<s:form action="saveAjax" id="registerForm"	namespace="%{#request.namespace}" method="post">
		<h3>Employee Registration Form</h3>
		<s:token />
		<div>
			<s:textfield name="firstName" id="firstName" placeholder="First name" label="First name" value="sdf"></s:textfield>
		</div>
		<div>
			<s:textfield name="lastName" id="lastName" placeholder="Last name" label="Last name" value="sdf"></s:textfield>
		</div>
		<div>
			<s:textfield name="email" id="email" placeholder="Email Address" label="Email :" value="asd@gmail.com"></s:textfield>
		</div>
		<div>
			<%-- <s:submit onclick="javascript:saveAjax();"  name="submit" value="Save">Submit</s:submit> --%>
			<input type="button" value="Submit" onclick="javascript:saveAjax();" />
		</div>

	</s:form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

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
	function reLogin(){
		var f = document.forms["registerForm"];
	  	f.action='<s:url action="saveAjax" namespace="%{#request.namespace}" />';
	  	f.submit();
	}
</script>

<s:set var="namespace" scope="request"><%=request.getContextPath()%>/employee</s:set>
</head>
<body>
	<s:form action="save" id="registerForm"	namespace="%{#request.namespace}" method="post">
		<h3>Employee Registration Form</h3>
		<s:token />
		<div>
			<s:textfield name="firstName" id="firstName" placeholder="First name" label="First name"></s:textfield>
		</div>
		<div>
			<s:textfield name="lastName" id="lastName" placeholder="Last name" label="Last name"></s:textfield>
		</div>
		<div>
			<s:textfield name="email" id="email" placeholder="Email Address" label="Email :"></s:textfield>
		</div>
		<div>
			<s:submit name="submit" value="Save"></s:submit>
		</div>

	</s:form>

</body>
</html>
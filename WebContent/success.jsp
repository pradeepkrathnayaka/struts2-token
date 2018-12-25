<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>
	<h1>Employee registration success</h1>
	<h2>Employee Details</h2>
	First Name : <s:property value="firstName" /><br> 
	Last Name : <s:property value="lastName" /><br>
	Email : <s:property value="email" /><br>
</body>
</html>
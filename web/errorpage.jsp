<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Invalid Input Grade Exception</title>
	<%@include file="design/style.jsp" %>
</head>

<body>
	<%@include file='design/header.html' %>
	<div class='container'>
		<h1 style='padding: 20px 0px; color: red;' class='display-4 text-center'><%= exception.getMessage() %></h1>
		<a class='btn btn-danger text-center btn-lg' href='index.jsp'>Go Back</a>
	</div>
</body>

</html>
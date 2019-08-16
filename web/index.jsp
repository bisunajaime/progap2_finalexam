<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Examination PROGAP2</title>
<%@include file="design/style.jsp" %>
</head>
<body>
<%@include file='design/header.html' %>
	<p></p>
	<!--Display the formula used for the computation -->
	<div class='container'>
		<h3 style='padding: 10px 0px' class='display-4 text-center'>Enter Student Grade</h3>
		
		<div class='row'>
			<div class='col-6'>
				<form action='compute.jsp' method='post'>
				<div class='row'>
					<div class='col-12'>
						<label>First Name</label>
						<input class='form-control' type='text' name='firstname' required>
						<label>Last Name</label>
						<input class='form-control' type='text' name='lastname' required>
						<label>Midterm Raw Score</label>
						<input class='form-control' type='text' name='midterms_raw' required>
						<label>Pre-Final Raw Score</label>
						<input class='form-control' type='text' name='prefinals_raw' required>
						<p></p>
						<div class='row'>
							<div class='col-6'>
								<input class='btn btn-success btn-block' type='submit' value='Submit'>
							</div>
							<div class='col-6'>
								<input class='btn btn-warning btn-block' type='reset' value='Reset'>
							</div>
						</div>
					</div>
					
				</div>
			</form>
			</div>
			<div class='col-6'>
				<%@include file='design/table.html' %>
			</div>
		</div>
	</div>
</body>
</html>
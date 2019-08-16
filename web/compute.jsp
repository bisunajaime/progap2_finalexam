<%@page import="com.exception.InvalidNameLengthException"%>
<%@page import="com.exception.InvalidInputGradeException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<jsp:useBean id="grade" class="com.compute.JavaBean"/>
<jsp:setProperty name="grade" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Examination PROGAP2</title>
<style>
p{
	font-size: 20px;
}
</style>
<%@include file="design/style.jsp" %>
</head>
<body>
<%@include file='design/header.html' %>
	<%
	try{
		if(grade.getFirstname().trim().length() == 0 || grade.getLastname().trim().length() == 0){
			throw new InvalidNameLengthException();
		}
	}catch(Exception e){
		throw new InvalidNameLengthException();
	}
	try{
		if(grade.getMidterms_raw().trim().length() == 0 
				&& grade.getPrefinals_raw().trim().length() == 0){
			throw new InvalidInputGradeException();
		}else if(Integer.parseInt(grade.getMidterms_raw().trim()) < 0 
				|| Integer.parseInt(grade.getMidterms_raw().trim()) > 100){
			throw new InvalidInputGradeException();
		}else if(Integer.parseInt(grade.getPrefinals_raw().trim()) < 0
				|| Integer.parseInt(grade.getPrefinals_raw().trim()) > 100){
			throw new InvalidInputGradeException();
		}else{
			grade.Facade();
		}
	}catch(Exception e){
		throw new InvalidInputGradeException();
	}
	%>
	<div class='container-fluid'>
		<div class='row'>
			<div class='col-6'>
				<h3 style='padding: 20px 0px;' class='display-4 text-center'>Results</h3>
				<div class='row'>
					<div class='col-6'>
						<h3>Firstname</h3>
						<p>${grade.getFirstname()}</p>
						<h3>Lastname</h3>
						<p>${grade.getLastname()}</p>
						<h3>Midterm</h3>
						<p>${grade.getMidterms_raw()}</p>
						<h3>Pre-Final</h3>
						<p>${grade.getPrefinals_raw()}</p>
						
					</div>
					<div class='col-6'>
						<h3>Term Grade</h3>
						<p>${grade.getTermgrade_raw()}</p>
						<h3>Remarks</h3>
						${grade.getRemarks()}
						<h3>Decimal Equivalent</h3>
						<p>${grade.getDecimalgrade()}</p>
						<h3>Message</h3>
						<p>${grade.getMessage()}</p>
					</div>
				</div>
			</div>
			<div class='col-6'>
				<h3 style='padding: 20px 0px;' class='display-4 text-center'>Guide</h3>
				<%@include file="design/table.html" %>
			</div>
		</div>
		<a class='btn btn-success btn-lg' href='index.jsp'>Go Back</a>
	</div>
</body>
</html>
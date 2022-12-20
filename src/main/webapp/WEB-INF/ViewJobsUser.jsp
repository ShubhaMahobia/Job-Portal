<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Job</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
<link href="<c:url value="/resources/css/Result_style.css" />"
	rel="stylesheet">
</head>
<body>

	<dd:forEach var="showJobs" items="${showJobs}">
		<div class="profile-card" style="margin-right: 20px;">

			<div class="card-header">
				<div class="pic">
					<img
						src="data:image/png;base64,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"
						alt="">
				</div>

				<div class="name">${showJobs.job_Title}</div>
				<div class="desc">${showJobs.company}</div>

				<div class="sm">
					<a href="https://www.facebook.com/login/" class="fab fa-facebook-f"></a>
					<a href="https://twitter.com/i/flow/login" class="fab fa-twitter"></a>
					<a href="https://github.com/login" class="fab fa-github"></a> <a
						href="https://www.youtube.com/" class="fab fa-youtube"></a>
				</div>
				<a href="/jobDetailsUser/${showJobs.job_Id}" class="contact-btn">Job
					Details</a>
			</div>
			<div style="height: 100px;"
				margin-right: 20px;     padding: 15px 10px;" class="card-footer">
				<div class="numbers">
					<div class="item">
						<span>${showJobs.working_hours} </span> Working Hours
					</div>
					<div class="border"></div>
					<div class="item">
						<span>${showJobs.salary}</span> Salary
					</div>
					<div class="border"></div>
					<div class="item">
						<span>${showJobs.job_Id}</span> Job ID
					</div>
				</div>
			</div>
		</div>
	</dd:forEach>
</html>
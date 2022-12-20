<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%
	Random r = new Random();
	int traffic = r.nextInt(900) + 100;
	int Jobs = r.nextInt(900) + 1000;
	int share = r.nextInt(900) + 10000;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>

<!----======== CSS ======== -->
<link rel="stylesheet" href="Admin.css">

<!----===== Iconscout CSS ===== -->
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/resources/css/Admin.css" />" rel="stylesheet">

</head>
<body>
	<nav>
		<div class="logo-name">
			<div class="logo-image">
				<!--<img src="images/logo.png" alt="">-->
			</div>

			<span class="logo_name">A B C</span>
		</div>

		<div class="menu-items">
			<ul class="nav-links">
				<li><a href="/show"> <i class="uil uil-files-landscapes"></i>
						<span class="link-name">Show All User</span>
				</a></li>
				<li><a href="/register"> <i class="uil uil-user-plus"></i>
						<span class="link-name">Add User</span>
				</a></li>
				<li><a href="/sendEmail"> <i class="fa fa-envelope"></i> <span
						class="link-name">Send Email</span>
				</a></li>
				<li><a href="/search"> <i class="uil uil-search"></i> <span
						class="link-name">Search User</span>
				</a></li>
				<li><a href="/createjobs"> <i class="fa fa-edit"></i> <span
						class="link-name">Post Job</span>
				</a></li>
				<li><a href="/viewjobs"> <i class="fa fa-briefcase"></i> <span
						class="link-name">View Jobs</span>
				</a></li>
			</ul>

			<ul class="logout-mode">
				<li><a href="/logout"> <i class="uil uil-signout"></i> <span
						class="link-name">Logout</span>
				</a></li>

				<li class="mode"><a href="#"> <i class="uil uil-moon"></i>
						<span class="link-name">Dark Mode</span>
				</a>

					<div class="mode-toggle">
						<span class="switch"></span>
					</div></li>
			</ul>
		</div>
	</nav>

	<section class="dashboard">
		<div class="top">
			<i class="uil uil-bars sidebar-toggle"></i>



			<!--<img src="images/profile.jpg" alt="">-->
		</div>

		<div class="dash-content">
			<div class="overview">
				<div class="title">
					<i class="uil uil-tachometer-fast-alt"></i> <span class="text">Dashboard</span>
				</div>

				<div class="boxes">
					<div class="box box1">
						<i class="uil uil-user"></i></i> <span class="text">Traffic</span> <span
							class="number"><%=traffic%></span>
					</div>
					<div class="box box2">
						<i class="uil uil-building"></i> <span class="text">Users</span> <span
							class="number"><%=Jobs%></span>
					</div>
					<div class="box box3">
						<i class="uil uil-share"></i> <span class="text">Total
							Share</span> <span class="number"><%=share%></span>
					</div>
				</div>
			</div>


		</div>
	</section>

	<script src="/resources/js/Admin.js"></script>
</body>
</html>
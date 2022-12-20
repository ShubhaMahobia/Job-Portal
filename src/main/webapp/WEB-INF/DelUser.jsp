<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Delete User By id</title>

<style>
* {
	font-family: sans-serif;
	box-sizing: border-box;
}

body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	align-content: center;
	flex-wrap: wrap;
}

h1 {
	position: absolute;
	top: 30%;
	font-size: 60px;
	color: white;
}

.box {
	width: 500px;
	height: 50px;
	background-color: white;
	border-radius: 30px;
	display: flex;
	align-items: center;
	padding: 20px;
}

.box>i {
	font-size: 20px;
	color: #777;
}

.box>input {
	flex: 1;
	height: 40px;
	border: none;
	outline: none;
	font-size: 18px;
	padding-left: 10px;
}

#btn {
	border-radius: 20px;
	margin-top: 116px;
	margin-left: 13px;
	background-color: #00FF00;
	cursor: pointer;
}

.btn:active {
	box-shadow: box-shadow 7px 6px 28px 1px rgba(0, 0, 0, 0.24);
	transform: translateY(4px);
}
</style>

<link href="<c:url value="/resources/css/header_style.css" />"
	rel="stylesheet">

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css"
	integrity="sha384-zIaWifL2YFF1qaDiAo0JFgsmasocJ/rqu7LKYH8CoBEXqGbb9eO+Xi3s6fQhgFWM">
</head>

<body
	style="background: linear-gradient(rgba(0, 0, 0, 0.0), rgba(0, 0, 0, 0.0)), url(https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg?auto=compress&amp;cs=tinysrgb&amp;w=1260&amp;h=750&amp;dpr=1); background-repeat: no-repeat; background-size: cover;">
	<header>
		<section
			style="margin-top: -24%; width: 124%; margin-left: -12%; line-height: 0.8;"ftco-section">


			<nav
				class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
				id="ftco-navbar">
				<div class="container">
					<a class="navbar-brand" href="/">A B C</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#ftco-nav" aria-controls="ftco-nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="fa fa-bars"></span> Menu
					</button>

					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item dropdown">
							<li style="margin-left: 725px;" class="nav-item"><a
								href="/logout" class="nav-link">Logout</a></li>
							<li class="nav-item"><a href="/search" class="nav-link">Search</a></li>
							<li class="nav-item"><a href="/dashboard" class="nav-link">Dashboard</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- END nav -->

		</section>
	</header>

	<h1>Delete User By Id</h1>

	<form action="delete">
		<div class="box">

			<i class="fa fa-search" aria-hidden="true"></i> <input type="text"
				name="userid" required="required" placeholder="UserId" /> <input
				id="btn" class="btn" type="submit" value="Delete User">


		</div>
	</form>
</body>
</html>


<!-- <form action="delete">
<table>
<h1>Delete User</h1>
<tr>
<td><input  type="text" name="userid" required="required" placeholder="User-Id" /> </td>
</tr>

<tr>
<td>
<input  class="button-9"  type="submit" value="Delete User">
</td>

</tr> -->

</table>
</form>
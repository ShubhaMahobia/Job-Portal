A<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
<style>
@import
	url("https://fonts.googleapis.com/css?family=Poppins&display=swap");

* {
	margin: 0;
	padding: 0;
}

html {
	box-sizing: border-box;
	font-size: 62.5%;
}

body {
	background-color: #eee;
	font-family: "Poppins", sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.grid {
	display: grid;
	width: 114em;
	grid-gap: 6rem;
	grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
	align-items: start;
}

.grid-item {
	background-color: #fff;
	border-radius: 0.4rem;
	overflow: hidden;
	box-shadow: 0 3rem 6rem rgba(0, 0, 0, 0.1);
	cursor: pointer;
	transition: 0.2s;
}

.grid-item:hover {
	transform: translateY(-0.5%);
	box-shadow: 0 4rem 8rem rgba(0, 0, 0, 0.5);
}

.card-img {
	display: block;
	width: 100%;
	height: 20rem;
	object-fit: cover;
}

.card-content {
	padding: 3rem;
}

.card-header {
	font-size: 3rem;
	font-weight: 500;
	color: #0d0d0d;
	margin-bottom: 1.5rem;
}

.card-text {
	font-size: 1.6rem;
	letter-spacing: 0.1rem;
	line-height: 1.7;
	color: #3d3d3d;
	margin-bottom: 2.5rem;
}

.card-btn {
	display: block;
	width: 100%;
	padding: 1.5rem;
	font-size: 2rem;
	text-align: center;
	color: #3363ff;
	background-color: #d8e0fd;
	border: none;
	border-radius: 0.4rem;
	transition: 0.2s;
	cursor: pointer;
	letter-spacing: 0.1rem;
}

.card-btn span {
	margin-left: 1rem;
	transition: 0.2s;
}

.card-btn:hover, .card-btn:active {
	background-color: #c2cffc;
}

.card-btn:hover span, .card-btn:active span {
	margin-left: 1.5rem;
}

@media only screen and (max-width: 60em) {
	body {
		padding: 3rem;
	}
	.grid {
		grid-gap: 3rem;
	}
}
</style>
</head>
<body
	style="line-height: 0.8; background: -webkit-linear-gradient(left, #3931af, #00c6ff)";>
	<div style="margin-top: 20px;" class="grid">
		<dd:forEach var="usr" items="${testv }">
			<div class="grid-item">
				<div class="card">
					<img class="card-img"
						src="https://cdn.pixabay.com/photo/2018/04/18/18/56/user-3331257_960_720.png" />
					<div class="card-content">
						<h1 class="card-header">${usr.userName }</h1>
						<p class="card-text"></p>

						<p class="card-text">
							<strong>UserID</strong> &nbsp; <em> ${usr.userid } </em>
						</p>

						<p class="card-text">
							<strong>Name</strong> &nbsp; <em> ${usr.first_name }
								${usr.last_name } </em>
						</p>

						<p class="card-text">
							<strong>Email</strong> <em>${usr.email }</em>
						</p>

						<p class="card-text">
							<strong>Country</strong> &nbsp; <em>${usr.country } </em>
						</p>

						<p class="card-text">
							<strong>Phone</strong> &nbsp; <em>${usr.phone}</em>
						</p>

						<a style="text-decoration: none;" href="update/${usr.userid}"><button
								class="card-btn">Update Profile</a><span>&rarr;</span>
						</button>
						<a style="text-decoration: none;" href="delete/${usr.userid}"><button
								style="margin-top: 15px;" class="card-btn">Delete</a><span>&rarr;</span>
						</button>
					</div>
				</div>
			</div>
		</dd:forEach>
	</div>
</body>
</html>
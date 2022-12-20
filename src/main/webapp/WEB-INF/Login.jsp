<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Login</title>
<link href="<c:url value="/resources/css/header_style.css" />"
	rel="stylesheet">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	margin: 0;
	padding: 0;
	background: linear-gradient(120deg, #2980b9, #8e44ad);
	height: 100vh;
	overflow: hidden;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	background: white;
	border-radius: 10px;
	box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.05);
}

.center h1 {
	text-align: center;
	padding: 20px 0;
	border-bottom: 1px solid silver;
}

.center form {
	padding: 0 40px;
	box-sizing: border-box;
}

form .txt_field {
	position: relative;
	border-bottom: 2px solid #adadad;
	margin: 30px 0;
}

.txt_field input {
	width: 100%;
	padding: 0 5px;
	height: 40px;
	font-size: 16px;
	border: none;
	background: none;
	outline: none;
}

.txt_field label {
	position: absolute;
	top: 50%;
	left: 5px;
	color: #adadad;
	transform: translateY(-50%);
	font-size: 16px;
	pointer-events: none;
	transition: .5s;
}

.txt_field span::before {
	content: '';
	position: absolute;
	top: 40px;
	left: 0;
	width: 0%;
	height: 2px;
	background: #2691d9;
	transition: .5s;
}

.txt_field input:focus ~ label, .txt_field input:valid ~ label {
	top: -5px;
	color: #2691d9;
}

.txt_field input:focus ~ span::before, .txt_field input:valid ~ span::before
	{
	width: 100%;
}

.pass {
	margin: -5px 0 20px 5px;
	color: #a6a6a6;
	cursor: pointer;
}

.pass:hover {
	text-decoration: underline;
}

input[type="submit"] {
	width: 100%;
	height: 50px;
	border: 1px solid;
	background: black;
	border-radius: 25px;
	font-size: 18px;
	color: #e9f4fb;
	font-weight: 700;
	cursor: pointer;
	outline: none;
}

input[type="submit"]:hover {
	border-color: #2691d9;
	transition: .5s;
}

.signup_link {
	margin: 30px 0;
	text-align: center;
	font-size: 16px;
	color: #666666;
}

.signup_link a {
	color: #2691d9;
	text-decoration: none;
}

.signup_link a:hover {
	text-decoration: underline;
}
</style>
</head>

<body
	style="line-height: 0.8; background: -webkit-linear-gradient(left, #3931af, #00c6ff);">
	<header>
		<div>
			<jsp:include page="Header.jsp" />
		</div>
		<div class="center">
			<h1>Login</h1>
			<form method="POST" name='login' action="/login">
				<div class="txt_field">
					<input id=username type="text" name='username' value='' required>
					<span></span> <label>Username</label>
				</div>
				<div class="txt_field">
					<input id=password type="password" name='password' required>
					<span></span> <label>Password</label>
				</div>
				<div class="pass">
					<a href="/password-email"> Forgot Password? </a>
				</div>
				<input id=submit type="submit" name='submit' value="Login">

				<div class="signup_link">
					Not a member? <a href="register">Signup</a>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			</form>
		</div>
	</header>
</body>








</html>

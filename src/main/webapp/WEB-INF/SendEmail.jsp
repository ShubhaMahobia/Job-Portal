<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bulk Email</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

body {
	background:
		url("https://images.pexels.com/photos/7130555/pexels-photo-7130555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
	background-size: cover;
	background-repeat: no-repeat;
}

.wrapper {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.registration_form {
	background: #545871;
	padding: 25px;
	border-radius: 5px;
	width: 400px;
}

.registration_form .title {
	text-align: center;
	font-size: 20px;
	text-transform: uppercase;
	color: #ebd0ce;
	letter-spacing: 5px;
	font-weight: 700;
}

.form_wrap {
	margin-top: 35px;
}

.form_wrap .input_wrap {
	margin-bottom: 15px;
}

.form_wrap .input_wrap:last-child {
	margin-bottom: 0;
}

.form_wrap .input_wrap label {
	display: block;
	margin-bottom: 3px;
	color: #9597a6;
}

.form_wrap .input_grp {
	display: flex;
	justify-content: space-between;
}

.form_wrap .input_grp  input[type="text"] {
	width: 165px;
}

.form_wrap  input[type="text"] {
	width: 100%;
	border-radius: 3px;
	border: 1px solid #9597a6;
	padding: 10px;
	outline: none;
}

.form_wrap  input[type="text"]:focus {
	border-color: #ebd0ce;
}

.form_wrap ul {
	background: #fff;
	padding: 8px 10px;
	border-radius: 3px;
	display: flex;
	justify-content: center;
}

.form_wrap ul li:first-child {
	margin-right: 15px;
}

.form_wrap ul .radio_wrap {
	position: relative;
	margin-bottom: 0;
}

.form_wrap ul .radio_wrap .input_radio {
	position: absolute;
	top: 0;
	right: 0;
	opacity: 0;
}

.form_wrap ul .radio_wrap span {
	display: inline-block;
	font-size: 14px;
	padding: 3px 20px;
	border-radius: 3px;
	color: #545871;
}

.form_wrap .input_radio:checked ~ span {
	background: #ebd0ce;
}

.form_wrap .submit_btn {
	width: 100%;
	background: #4267B2;
	padding: 10px;
	border: 0;
	border-radius: 3px;
	text-transform: uppercase;
	letter-spacing: 3px;
	cursor: pointer;
	font-size: 18px;
	font-weight: bold;
	color: white;
	transition: 0.4s;
}

.form_wrap .submit_btn:hover {
	background: #FFC300;
}

.back button {
	letter-spacing: 3px;
	height: 42.4px;
	width: 350px;
	font-size: 18px;
	font-weight: bold;
	color: white;
	background-color: red;
	border: none;
	transition: .4s;
	cursor: pointer;
	border-radius: 3px;
	margin-top: 12px;
}

.back button:hover {
	background: black;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="registration_form">
			<div class="title">Bulk Email</div>

			<sf:form action="/sendEmails" method="post" modelAttribute="emails">
				<div class="form_wrap">
					<div class="input_wrap">
						<label for="email">Email Address</label>
						<sf:input path="reciever_emails" type="text" name="email"
							id="email" class="form-control"
							placeholder="Seperate emails with comma" required="required" />
						<sf:errors path="reciever_emails" class="errors"></sf:errors>
					</div>

					<div class="input_wrap">
						<label for="city">Subject</label>
						<sf:input path="subject" type="text" name="subject" id="subject"
							class="form-control" placeholder="Enter Subject"
							required="required" />
						<sf:errors path="subject" class="errors"></sf:errors>
					</div>
					<div class="input_wrap">
						<label for="country">Content of Mail</label>
						<sf:textarea style="width: 347px; height: 77px;" path="content"
							name="content" id="content" class="form-control" rows="5"
							placeholder="Enter the content of the mail" required="required"></sf:textarea>
						<sf:errors path="content" class="errors"></sf:errors>
					</div>
					<div class="input_wrap">
						<input type="submit" value="Send" class="submit_btn"
							onclick="checker()">
					</div>
				</div>
			</sf:form>
			<div class="back">
				<a href="/dashboard">
					<button class="submit_btn">BACK</button>
				</a>

			</div>





		</div>
	</div>
</body>
</html>
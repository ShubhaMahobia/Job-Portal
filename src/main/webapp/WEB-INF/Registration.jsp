<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<Style>
.daterangepicker, .select2-container--open .select2-dropdown--below {
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15)
}

.font-robo {
	font-family: Roboto, Arial, "Helvetica Neue", sans-serif
}

.font-poppins {
	font-family: Poppins, Arial, "Helvetica Neue", sans-serif
}

.font-opensans, body {
	font-family: "Open Sans", Arial, "Helvetica Neue", sans-serif
}

.row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap
}

.row .col-2:last-child .input-group-desc {
	margin-bottom: 0
}

.row-space {
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-moz-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between
}

.row-refine {
	margin: 0 -15px
}

.row-refine .col-3 .input-group-desc, .row-refine .col-9 .input-group-desc
	{
	margin-bottom: 0
}

.col-2 {
	width: -webkit-calc(( 100% - 30px)/2);
	width: -moz-calc(( 100% - 30px)/2);
	width: calc(( 100% - 30px)/2)
}

@media ( max-width :767px) {
	.col-2 {
		width: 100%
	}
}

.form-row {
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin-bottom: 40px
}

.form-row .name {
	width: 125px;
	color: #555;
	font-size: 15px;
	font-weight: 700
}

body, h1, h2, h3, h4, h5, h6 {
	font-weight: 400
}

.form-row .value {
	width: -webkit-calc(100% - 125px);
	width: -moz-calc(100% - 125px);
	width: calc(100% - 125px)
}

@media ( max-width :767px) {
	.form-row {
		display: block
	}
	.form-row .name, .form-row .value {
		display: block;
		width: 100%
	}
	.form-row .name {
		margin-bottom: 7px
	}
}

.col-3, .col-9 {
	padding: 0 15px;
	position: relative;
	width: 100%;
	min-height: 1px
}

*, blockquote, body, dd, dl, fieldset, figure, h1, h2, h3, h4, h5, h6,
	hr, legend, ol, p, pre, ul {
	margin: 0;
	padding: 0
}

.col-3 {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 25%;
	-moz-box-flex: 0;
	-ms-flex: 0 0 25%;
	flex: 0 0 25%;
	max-width: 25%
}

@media ( max-width :767px) {
	.col-3 {
		-webkit-box-flex: 0;
		-webkit-flex: 0 0 35%;
		-moz-box-flex: 0;
		-ms-flex: 0 0 35%;
		flex: 0 0 35%;
		max-width: 35%
	}
}

.col-9 {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 75%;
	-moz-box-flex: 0;
	-ms-flex: 0 0 75%;
	flex: 0 0 75%;
	max-width: 75%
}

@media ( max-width :767px) {
	.col-9 {
		-webkit-box-flex: 0;
		-webkit-flex: 0 0 65%;
		-moz-box-flex: 0;
		-ms-flex: 0 0 65%;
		flex: 0 0 65%;
		max-width: 65%
	}
}

html {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

*, :after, :before {
	-webkit-box-sizing: inherit;
	-moz-box-sizing: inherit;
	box-sizing: inherit
}

li>ol, li>ul {
	margin-bottom: 0
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

fieldset {
	min-width: 0;
	border: 0
}

button {
	outline: 0;
	background: 0 0;
	border: none
}

.page-wrapper {
	min-height: 100vh
}

body {
	font-size: 14px
}

h1 {
	font-size: 36px
}

h2 {
	font-size: 30px
}

h3 {
	font-size: 24px
}

h4 {
	font-size: 18px
}

h5 {
	font-size: 15px
}

h6 {
	font-size: 13px
}

.bg-blue {
	background: #2c6ed5
}

.bg-red {
	background: #fa4251
}

.bg-gra-01 {
	background: -webkit-gradient(linear, left bottom, left top, from(#fbc2eb),
		to(#a18cd1));
	background: -webkit-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: -moz-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: -o-linear-gradient(bottom, #fbc2eb 0, #a18cd1 100%);
	background: linear-gradient(to top, #fbc2eb 0, #a18cd1 100%)
}

.bg-gra-02 {
	background: -webkit-gradient(linear, left bottom, right top, from(#fc2c77),
		to(#6c4079));
	background: -webkit-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: -moz-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: -o-linear-gradient(bottom left, #fc2c77 0, #6c4079 100%);
	background: linear-gradient(to top right, #fc2c77 0, #6c4079 100%)
}

.bg-gra-03 {
	background: -webkit-gradient(linear, left bottom, right top, from(#08aeea),
		to(#b721ff));
	background: -webkit-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: -moz-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: -o-linear-gradient(bottom left, #08aeea 0, #b721ff 100%);
	background: linear-gradient(to top right, #08aeea 0, #b721ff 100%)
}

.p-t-100 {
	padding-top: 100px
}

.p-t-130 {
	padding-top: 130px
}

.p-t-180 {
	padding-top: 180px
}

.p-t-45 {
	padding-top: 45px
}

.p-t-20 {
	padding-top: 20px
}

.p-t-15 {
	padding-top: 15px
}

.p-t-10 {
	padding-top: 10px
}

.p-t-30 {
	padding-top: 30px
}

.p-b-100 {
	padding-bottom: 100px
}

.p-b-50 {
	padding-bottom: 50px
}

.m-r-45 {
	margin-right: 45px
}

.m-r-55 {
	margin-right: 55px
}

.m-b-55 {
	margin-bottom: 55px
}

.wrapper {
	margin: 0 auto
}

.wrapper--w960 {
	max-width: 960px
}

.wrapper--w790 {
	max-width: 790px
}

.wrapper--w780 {
	max-width: 780px
}

.wrapper--w680 {
	max-width: 680px
}

.btn {
	display: inline-block;
	line-height: 50px;
	padding: 0 50px;
	-webkit-transition: all .4s ease;
	-o-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease;
	cursor: pointer;
	font-size: 15px;
	text-transform: uppercase;
	font-weight: 700;
	color: #fff;
	font-family: inherit
}

.btn--radius {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.btn--radius-2 {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px
}

.btn--pill {
	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px
}

.btn--green {
	background: #57b846
}

.btn--green:hover {
	background: #4dae3c
}

.btn--blue {
	background: #4272d7
}

.btn--blue:hover {
	background: #3868cd
}

.btn--red {
	background: #ff4b5a
}

.btn--red:hover {
	background: #eb3746
}

td.active {
	background-color: #2c6ed5
}

input[type=datei] {
	padding: 14px
}

.table-condensed td, .table-condensed th {
	font-size: 14px;
	font-family: Roboto, Arial, "Helvetica Neue", sans-serif;
	font-weight: 400
}

.label, .title {
	font-weight: 700
}

.daterangepicker td {
	width: 40px;
	height: 30px
}

.daterangepicker {
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	display: none;
	border: 1px solid #e0e0e0;
	margin-top: 5px
}

.daterangepicker::after, .daterangepicker::before {
	display: none
}

.daterangepicker thead tr th {
	padding: 10px 0
}

.daterangepicker .table-condensed th select {
	border: 1px solid #ccc;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	font-size: 14px;
	padding: 5px;
	outline: 0
}

input {
	outline: 0;
	margin: 0;
	border: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	width: 100%;
	font-size: 14px;
	font-family: inherit
}

.radio-container {
	display: inline-block;
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	font-size: 16px;
	color: #666;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.radio-container input {
	position: absolute;
	opacity: 0;
	cursor: pointer
}

.radio-container input:checked ~.checkmark {
	background-color: #e5e5e5
}

.radio-container input:checked ~.checkmark:after {
	display: block
}

.radio-container .checkmark:after {
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	width: 12px;
	height: 12px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	background: #57b846
}

.checkmark {
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-50%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	left: 0;
	height: 20px;
	width: 20px;
	background-color: #e5e5e5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	-webkit-box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08);
	-moz-box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08);
	box-shadow: inset 0 1px 3px 0 rgba(0, 0, 0, .08)
}

.checkmark:after {
	content: "";
	position: absolute;
	display: none
}

.input-group, .input-group-desc {
	position: relative
}

.input--style-5 {
	background: #e5e5e5;
	line-height: 50px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding: 0 22px;
	font-size: 16px;
	color: #555
}

@media ( max-width :767px) {
	.input-group-desc {
		margin-bottom: 40px
	}
}

.input-group {
	margin: 0
}

.label {
	color: #555;
	font-size: 15px
}

.label--block {
	width: 100%
}

.label--desc {
	position: absolute;
	text-transform: capitalize;
	display: block;
	color: #999;
	font-size: 14px;
	margin: 7px 0 0;
	left: 0
}

.select--no-search .select2-search {
	display: none !important
}

.select2-container--open .select2-dropdown--below {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	border: 1px solid #e0e0e0;
	margin-top: 5px;
	overflow: hidden
}

.select2-container--default .select2-results__option {
	padding-left: 22px
}

.rs-select2 .select2-container {
	width: 100% !important;
	outline: 0;
	background: #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px
}

.rs-select2 .select2-container .select2-selection--single {
	outline: 0;
	border: none;
	height: 50px;
	background: 0 0
}

.card, .card-5 {
	background: #fff
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__rendered
	{
	line-height: 50px;
	color: #555;
	font-size: 16px;
	font-family: inherit;
	padding-left: 22px;
	padding-right: 50px
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow
	{
	height: 50px;
	right: 15px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-moz-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow b
	{
	display: none
}

.rs-select2 .select2-container .select2-selection--single .select2-selection__arrow:after
	{
	font-family: Material-Design-Iconic-Font;
	content: '\f2f9';
	font-size: 24px;
	color: #999;
	-webkit-transition: all .4s ease;
	-o-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease
}

.rs-select2 .select2-container.select2-container--open .select2-selection--single .select2-selection__arrow::after
	{
	-webkit-transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	transform: rotate(-180deg)
}

.title {
	font-size: 24px;
	text-transform: uppercase;
	text-align: center;
	color: #fff
}

.card {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}

.card-5 {
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15)
}

.card-5 .card-heading {
	padding: 20px 0;
	background: #1a1a1a;
	-webkit-border-top-left-radius: 10px;
	-moz-border-radius-topleft: 10px;
	border-top-left-radius: 10px;
	-webkit-border-top-right-radius: 10px;
	-moz-border-radius-topright: 10px;
	border-top-right-radius: 10px
}

.card-5 .card-body {
	padding: 52px 85px 73px
}

@media ( max-width :767px) {
	.card-5 .card-body {
		padding: 40px 30px 50px
	}
}
<
section
 
class
="vh-100"
 
style
="background-color
:
 
#eee
;"
>
<
div
 
class
="container
 
h-100
"
>
<
div
 
class
="row
 
d-flex
 
justify-content-center
 
align-items-center
 
h-100
"
>
<
div
 
class
="col-lg-12
 
col-xl-11
"
>
<
div
 
class
="card
 
text-black
"
 
style
="border-radius
:
 
25
px
;"
>
<
div
 
class
="card-body
 
p-md-5
"
>
<
div
 
class
="row
 
justify-content-center
"
>
<
div
 
class
="col-md-10
 
col-lg-6
 
col-xl-5
 
order-2
 
order-lg-1
"
>
<
p
 
class
="text-center
 
h1
 
fw-bold
 
mb-5
 
mx-1
 
mx-md-4
 
mt-4
"
>
Sign
 
up
</p
>
<
form
 
class
="mx-1
 
mx-md-4
"
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-user
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="text"
 
id
="form3Example1c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example1c"
>
Your
 
Name
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-envelope
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="email"
 
id
="form3Example3c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example3c"
>
Your
 
Email
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-lock
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="password"
 
id
="form3Example4c"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example4c"
>
Password
</label
>
</
div
>
</
div
>
<
div
 
class
="d-flex
 
flex-row
 
align-items-center
 
mb-4
"
>
<
i
 
class
="fas
 
fa-key
 
fa-lg
 
me-3
 
fa-fw
"
>
</
i
>
<
div
 
class
="form-outline
 
flex-fill
 
mb-0
"
>
<
input
 
type
="password"
 
id
="form3Example4cd"
 
class
="form-control"
/
>
<
label
 
class
="form-label"
 
for
="form3Example4cd"
>
Repeat
 
your
 
password
</label
>
</
div
>
</
div
>
<
div
 
class
="form-check
 
d-flex
 
justify-content-center
 
mb-5
"
>
<
input
 
class
="form-check-input
 
me-2
"
 
type
="checkbox"
 
value
=""
 
id
="form2Example3c"
/
>
<
label
 
class
="form-check-label"
 
for
="form2Example3"
>
I
 
agree
 
all
 
statements
 
in
 
<
a
 
href
="#!"
>
Terms
 
of
 
service
</a
>
</
label
>
</
div
>
<
div
 
class
="d-flex
 
justify-content-center
 
mx-4
 
mb-3
 
mb-lg-4
"
>
<
button
 
type
="button"
 
class
="btn
 
btn-primary
 
btn-lg
"
>
Register
</button
>
</
div
>
</
form
>
</
div
>
<
div
 
class
="col-md-10
 
col-lg-6
 
col-xl-7
 
d-flex
 
align-items-center
 
order-1
 
order-lg-2
"
>
<
img
 
src
="https
:
//mdbcdn
.b-cdn
.net
/img/Photos/new-templates/bootstrap-registration/draw1
.webp
"

                  
class
="img-fluid"
 
alt
="Sample
 
image
"
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
div
>
</
section
>
</Style>




<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Registration</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">



</head>

<body>
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Join us Now!!!</h2>
				</div>
				<div class="card-body">
					<sf:form action="myreg" method="post" modelAttribute="userData">
						<div class="form-row m-b-55">
							<div class="name">Name</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2">
										<div class="input-group-desc">
											<sf:input path="first_name" class="input--style-5"
												type="text" required="required" />
											<label class="label--desc">first name</label>
										</div>
									</div>
									<div class="col-2">
										<div class="input-group-desc">
											<sf:input path="last_name" class="input--style-5" type="text"
												required="required" />
											<label class="label--desc">last name</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Country</div>
							<div class="value">
								<div class="input-group">
									<sf:select style="height: 48px; border-style: none;"
										class="input--style-5" path="Country">
										<option disabled="disabled" selected="selected">Country</option>
										<option value="Afghanistan">Afghanistan</option>
										<option value="Åland Islands">Åland Islands</option>
										<option value="Albania">Albania</option>
										<option value="Algeria">Algeria</option>
										<option value="American Samoa">American Samoa</option>
										<option value="Andorra">Andorra</option>
										<option value="Angola">Angola</option>
										<option value="Anguilla">Anguilla</option>
										<option value="Antarctica">Antarctica</option>
										<option value="Antigua and Barbuda">Antigua and
											Barbuda</option>
										<option value="Argentina">Argentina</option>
										<option value="Armenia">Armenia</option>
										<option value="Aruba">Aruba</option>
										<option value="Australia">Australia</option>
										<option value="Austria">Austria</option>
										<option value="Azerbaijan">Azerbaijan</option>
										<option value="Bahamas">Bahamas</option>
										<option value="Bahrain">Bahrain</option>
										<option value="Bangladesh">Bangladesh</option>
										<option value="Barbados">Barbados</option>
										<option value="Belarus">Belarus</option>
										<option value="Belgium">Belgium</option>
										<option value="Belize">Belize</option>
										<option value="Benin">Benin</option>
										<option value="Bermuda">Bermuda</option>
										<option value="Bhutan">Bhutan</option>
										<option value="Bolivia">Bolivia</option>
										<option value="Bosnia and Herzegovina">Bosnia and
											Herzegovina</option>
										<option value="Botswana">Botswana</option>
										<option value="Bouvet Island">Bouvet Island</option>
										<option value="Brazil">Brazil</option>
										<option value="British Indian Ocean Territory">British
											Indian Ocean Territory</option>
										<option value="Brunei Darussalam">Brunei Darussalam</option>
										<option value="Bulgaria">Bulgaria</option>
										<option value="Burkina Faso">Burkina Faso</option>
										<option value="Burundi">Burundi</option>
										<option value="Cambodia">Cambodia</option>
										<option value="Cameroon">Cameroon</option>
										<option value="Canada">Canada</option>
										<option value="Cape Verde">Cape Verde</option>
										<option value="Cayman Islands">Cayman Islands</option>
										<option value="Central African Republic">Central
											African Republic</option>
										<option value="Chad">Chad</option>
										<option value="Chile">Chile</option>
										<option value="China">China</option>
										<option value="Christmas Island">Christmas Island</option>
										<option value="Cocos (Keeling) Islands">Cocos
											(Keeling) Islands</option>
										<option value="Colombia">Colombia</option>
										<option value="Comoros">Comoros</option>
										<option value="Congo">Congo</option>
										<option value="Congo, The Democratic Republic of The">Congo,
											The Democratic Republic of The</option>
										<option value="Cook Islands">Cook Islands</option>
										<option value="Costa Rica">Costa Rica</option>
										<option value="Cote D'ivoire">Cote D'ivoire</option>
										<option value="Croatia">Croatia</option>
										<option value="Cuba">Cuba</option>
										<option value="Cyprus">Cyprus</option>
										<option value="Czech Republic">Czech Republic</option>
										<option value="Denmark">Denmark</option>
										<option value="Djibouti">Djibouti</option>
										<option value="Dominica">Dominica</option>
										<option value="Dominican Republic">Dominican Republic</option>
										<option value="Ecuador">Ecuador</option>
										<option value="Egypt">Egypt</option>
										<option value="El Salvador">El Salvador</option>
										<option value="Equatorial Guinea">Equatorial Guinea</option>
										<option value="Eritrea">Eritrea</option>
										<option value="Estonia">Estonia</option>
										<option value="Ethiopia">Ethiopia</option>
										<option value="Falkland Islands (Malvinas)">Falkland
											Islands (Malvinas)</option>
										<option value="Faroe Islands">Faroe Islands</option>
										<option value="Fiji">Fiji</option>
										<option value="Finland">Finland</option>
										<option value="France">France</option>
										<option value="French Guiana">French Guiana</option>
										<option value="French Polynesia">French Polynesia</option>
										<option value="French Southern Territories">French
											Southern Territories</option>
										<option value="Gabon">Gabon</option>
										<option value="Gambia">Gambia</option>
										<option value="Georgia">Georgia</option>
										<option value="Germany">Germany</option>
										<option value="Ghana">Ghana</option>
										<option value="Gibraltar">Gibraltar</option>
										<option value="Greece">Greece</option>
										<option value="Greenland">Greenland</option>
										<option value="Grenada">Grenada</option>
										<option value="Guadeloupe">Guadeloupe</option>
										<option value="Guam">Guam</option>
										<option value="Guatemala">Guatemala</option>
										<option value="Guernsey">Guernsey</option>
										<option value="Guinea">Guinea</option>
										<option value="Guinea-bissau">Guinea-bissau</option>
										<option value="Guyana">Guyana</option>
										<option value="Haiti">Haiti</option>
										<option value="Heard Island and Mcdonald Islands">Heard
											Island and Mcdonald Islands</option>
										<option value="Holy See (Vatican City State)">Holy
											See (Vatican City State)</option>
										<option value="Honduras">Honduras</option>
										<option value="Hong Kong">Hong Kong</option>
										<option value="Hungary">Hungary</option>
										<option value="Iceland">Iceland</option>
										<option value="India">India</option>
										<option value="Indonesia">Indonesia</option>
										<option value="Iran, Islamic Republic of">Iran,
											Islamic Republic of</option>
										<option value="Iraq">Iraq</option>
										<option value="Ireland">Ireland</option>
										<option value="Isle of Man">Isle of Man</option>
										<option value="Israel">Israel</option>
										<option value="Italy">Italy</option>
										<option value="Jamaica">Jamaica</option>
										<option value="Japan">Japan</option>
										<option value="Jersey">Jersey</option>
										<option value="Jordan">Jordan</option>
										<option value="Kazakhstan">Kazakhstan</option>
										<option value="Kenya">Kenya</option>
										<option value="Kiribati">Kiribati</option>
										<option value="Korea, Democratic People's Republic of">Korea,
											Democratic People's Republic of</option>
										<option value="Korea, Republic of">Korea, Republic of</option>
										<option value="Kuwait">Kuwait</option>
										<option value="Kyrgyzstan">Kyrgyzstan</option>
										<option value="Lao People's Democratic Republic">Lao
											People's Democratic Republic</option>
										<option value="Latvia">Latvia</option>
										<option value="Lebanon">Lebanon</option>
										<option value="Lesotho">Lesotho</option>
										<option value="Liberia">Liberia</option>
										<option value="Libyan Arab Jamahiriya">Libyan Arab
											Jamahiriya</option>
										<option value="Liechtenstein">Liechtenstein</option>
										<option value="Lithuania">Lithuania</option>
										<option value="Luxembourg">Luxembourg</option>
										<option value="Macao">Macao</option>
										<option value="Macedonia, The Former Yugoslav Republic of">Macedonia,
											The Former Yugoslav Republic of</option>
										<option value="Madagascar">Madagascar</option>
										<option value="Malawi">Malawi</option>
										<option value="Malaysia">Malaysia</option>
										<option value="Maldives">Maldives</option>
										<option value="Mali">Mali</option>
										<option value="Malta">Malta</option>
										<option value="Marshall Islands">Marshall Islands</option>
										<option value="Martinique">Martinique</option>
										<option value="Mauritania">Mauritania</option>
										<option value="Mauritius">Mauritius</option>
										<option value="Mayotte">Mayotte</option>
										<option value="Mexico">Mexico</option>
										<option value="Micronesia, Federated States of">Micronesia,
											Federated States of</option>
										<option value="Moldova, Republic of">Moldova,
											Republic of</option>
										<option value="Monaco">Monaco</option>
										<option value="Mongolia">Mongolia</option>
										<option value="Montenegro">Montenegro</option>
										<option value="Montserrat">Montserrat</option>
										<option value="Morocco">Morocco</option>
										<option value="Mozambique">Mozambique</option>
										<option value="Myanmar">Myanmar</option>
										<option value="Namibia">Namibia</option>
										<option value="Nauru">Nauru</option>
										<option value="Nepal">Nepal</option>
										<option value="Netherlands">Netherlands</option>
										<option value="Netherlands Antilles">Netherlands
											Antilles</option>
										<option value="New Caledonia">New Caledonia</option>
										<option value="New Zealand">New Zealand</option>
										<option value="Nicaragua">Nicaragua</option>
										<option value="Niger">Niger</option>
										<option value="Nigeria">Nigeria</option>
										<option value="Niue">Niue</option>
										<option value="Norfolk Island">Norfolk Island</option>
										<option value="Northern Mariana Islands">Northern
											Mariana Islands</option>
										<option value="Norway">Norway</option>
										<option value="Oman">Oman</option>
										<option value="Pakistan">Pakistan</option>
										<option value="Palau">Palau</option>
										<option value="Palestinian Territory, Occupied">Palestinian
											Territory, Occupied</option>
										<option value="Panama">Panama</option>
										<option value="Papua New Guinea">Papua New Guinea</option>
										<option value="Paraguay">Paraguay</option>
										<option value="Peru">Peru</option>
										<option value="Philippines">Philippines</option>
										<option value="Pitcairn">Pitcairn</option>
										<option value="Poland">Poland</option>
										<option value="Portugal">Portugal</option>
										<option value="Puerto Rico">Puerto Rico</option>
										<option value="Qatar">Qatar</option>
										<option value="Reunion">Reunion</option>
										<option value="Romania">Romania</option>
										<option value="Russian Federation">Russian Federation</option>
										<option value="Rwanda">Rwanda</option>
										<option value="Saint Helena">Saint Helena</option>
										<option value="Saint Kitts and Nevis">Saint Kitts and
											Nevis</option>
										<option value="Saint Lucia">Saint Lucia</option>
										<option value="Saint Pierre and Miquelon">Saint
											Pierre and Miquelon</option>
										<option value="Saint Vincent and The Grenadines">Saint
											Vincent and The Grenadines</option>
										<option value="Samoa">Samoa</option>
										<option value="San Marino">San Marino</option>
										<option value="Sao Tome and Principe">Sao Tome and
											Principe</option>
										<option value="Saudi Arabia">Saudi Arabia</option>
										<option value="Senegal">Senegal</option>
										<option value="Serbia">Serbia</option>
										<option value="Seychelles">Seychelles</option>
										<option value="Sierra Leone">Sierra Leone</option>
										<option value="Singapore">Singapore</option>
										<option value="Slovakia">Slovakia</option>
										<option value="Slovenia">Slovenia</option>
										<option value="Solomon Islands">Solomon Islands</option>
										<option value="Somalia">Somalia</option>
										<option value="South Africa">South Africa</option>
										<option value="South Georgia and The South Sandwich Islands">South
											Georgia and The South Sandwich Islands</option>
										<option value="Spain">Spain</option>
										<option value="Sri Lanka">Sri Lanka</option>
										<option value="Sudan">Sudan</option>
										<option value="Suriname">Suriname</option>
										<option value="Svalbard and Jan Mayen">Svalbard and
											Jan Mayen</option>
										<option value="Swaziland">Swaziland</option>
										<option value="Sweden">Sweden</option>
										<option value="Switzerland">Switzerland</option>
										<option value="Syrian Arab Republic">Syrian Arab
											Republic</option>
										<option value="Taiwan, Province of China">Taiwan,
											Province of China</option>
										<option value="Tajikistan">Tajikistan</option>
										<option value="Tanzania, United Republic of">Tanzania,
											United Republic of</option>
										<option value="Thailand">Thailand</option>
										<option value="Timor-leste">Timor-leste</option>
										<option value="Togo">Togo</option>
										<option value="Tokelau">Tokelau</option>
										<option value="Tonga">Tonga</option>
										<option value="Trinidad and Tobago">Trinidad and
											Tobago</option>
										<option value="Tunisia">Tunisia</option>
										<option value="Turkey">Turkey</option>
										<option value="Turkmenistan">Turkmenistan</option>
										<option value="Turks and Caicos Islands">Turks and
											Caicos Islands</option>
										<option value="Tuvalu">Tuvalu</option>
										<option value="Uganda">Uganda</option>
										<option value="Ukraine">Ukraine</option>
										<option value="United Arab Emirates">United Arab
											Emirates</option>
										<option value="United Kingdom">United Kingdom</option>
										<option value="United States">United States</option>
										<option value="United States Minor Outlying Islands">United
											States Minor Outlying Islands</option>
										<option value="Uruguay">Uruguay</option>
										<option value="Uzbekistan">Uzbekistan</option>
										<option value="Vanuatu">Vanuatu</option>
										<option value="Venezuela">Venezuela</option>
										<option value="Viet Nam">Viet Nam</option>
										<option value="Virgin Islands, British">Virgin
											Islands, British</option>
										<option value="Virgin Islands, U.S.">Virgin Islands,
											U.S.</option>
										<option value="Wallis and Futuna">Wallis and Futuna</option>
										<option value="Western Sahara">Western Sahara</option>
										<option value="Yemen">Yemen</option>
										<option value="Zambia">Zambia</option>
										<option value="Zimbabwe">Zimbabwe</option>
									</sf:select>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<sf:input path="email" class="input--style-5" type="email"
										required="required" />
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="name">Phone Number</div>
							<div class="value">
								<div class="input-group">
									<sf:input path="phone" class="input--style-5" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">User-Name</div>
							<div class="value">
								<div class="input-group">
									<sf:input path="userName" class="input--style-5" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Password</div>
							<div class="value">
								<div class="input-group">
									<sf:input path="password" class="input--style-5"
										type="password" required="required" />
								</div>
							</div>
						</div>

						<div>
							<button class="btn btn--radius-2 btn--red" type="submit">Register</button>
						</div>
					</sf:form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
</html>
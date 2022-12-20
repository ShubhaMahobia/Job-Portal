<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="java.util.*" %>
    <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>OOPSS!!!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="jumbotron text-center">
  <h1 class="display-3">Sorry!</h1>
  <p class="lead"><strong>You can't delete your own account from here</strong>To delete your account you have to access the database.</p>
  <hr>
  <p class="lead">
    <a style="width: 85px;" class="btn btn-primary btn-sm" href="/show" role="button">Back</a><br>
    <a class="btn btn-primary btn-sm" href="/dashboard" role="button">DashBoard</a>
  </p>
</div>
</body>
</html>
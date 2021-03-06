<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container mt-4">
		<h1>Security Demo</h1>
	
		<c:url var="memberPage" value="/member"></c:url>
		<c:url var="adminPage" value="/admin"></c:url>
		<c:url var="logout" value="/logout"></c:url>
		
		<c:if test="${ not empty userName }">
			<p>Welcome ${ userName }!</p>
		</c:if>
		
		<c:choose>
			<c:when test="${not empty loginUser }">
				<a href="${ memberPage }" class="btn btn-primary">Member Page</a>
				<c:if test="${ isAdmin }">
					<a href="${ adminPage }" class="btn btn-primary">Admin Page</a>
				</c:if>
				<a href="${ logout }" class="btn btn-primary">Logout</a>
			</c:when>
			<c:otherwise>
				<a href="${ memberPage }" class="btn btn-primary">Member Page</a>
				<a href="${ adminPage }" class="btn btn-primary">Admin Page</a>
			</c:otherwise>
		</c:choose>		
		
	</div>

</body>
</html>
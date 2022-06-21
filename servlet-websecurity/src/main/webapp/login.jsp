<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
	<h1>Login Page</h1>
		<div class="row">
			<div class="col-md-4">
				<form action="j_security_check" class="form-input">
					<div class="mt-2">
						<label for="loginId">Login Id</label>
						<input type="text" name="j_username" id="loginId" placeholder="Enter login Id" class="form-control" />
					</div>
					<div class="mt-2">
						<label for="pass">Password</label>
						<input type="password" name="j_password" id="pass" placeholder="Enter password" class="form-control" />
					</div>
					<div class="mt-2">
						<input type="submit" value="login" class="btn btn-primary" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Employee</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">

		<h3>Add New Employee</h3>
		<hr>
		<p class="h4 mb-4">Enter Employee Details</p>
		<form action="/directory/save" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Employee.id}" />
			<div class="form-inline">
				<input type="text" name="fullName" value="${Employee.fullName}"
					class="form-control mb-4 col-4" placeholder="Name">
			</div>
			<div class="form-inline">
				<input type="email" name="email" value="${Employee.email}"
					class="form-control mb-4 col-4" placeholder="Email">
			</div>
			<div class="form-inline">
				<input type="tel" name="phone" value="${Employee.phone}"
					class="form-control mb-4 col-4" placeholder="Phone">
			</div>
			<div class="form-inline">
				<input type="text" name="department" value="${Employee.department}"
					class="form-control mb-4 col-4" placeholder="Department">
			</div>
			<div class="form-inline">
				<input type="date" name="dob" value="${Employee.dob}"
					class="form-control mb-4 col-4" placeholder="Date of Birth">
			</div>
			<div class="form-inline">
				<input type="date" name="doj" value="${Employee.doj}"
					class="form-control mb-4 col-4" placeholder="Date of Joining">
			</div>
			<input name="${_csrf.parameterName }" type="hidden"
				value="${_csrf.token}" />
			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/directory/employees">Back to Employee List</a>

	</div>
</body>
</html>
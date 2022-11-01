<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Save Student</title>
<style>
input.form-control {
	width: 100% !important;
	height:50px;
}

.form-inline {
	width: 100%;
}
</style>
</head>
<body>
	<div class='container'>
		<h3 class="text-center">Student Entry</h3>
		<hr
			style="background: orange; opacity: 1; height: 1px; border: none; width: 20%;" />

		<form action="/api/students/saveStudent" method="POST"
			style="background: #eaeaea; padding: 1.5rem; border-radius: 10px; width: 50%; margin: 0 auto;text-align:center">

		<p class="h5 mb-4 primary text-center">Enter Student Details</p>
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Student.id}" />

			<div class="form-inline">
				<input type="text" name="fname" value="${Student.fname}"
					class="form-control mb-4" placeholder="First Name">
			</div>

			<div class="form-inline">
				<input type="text" name="lname" value="${Student.lname}"
					class="form-control mb-4" placeholder="Last Name">
			</div>

			<div class="form-inline">
				<input type="text" name="course" value="${Student.course}"
					class="form-control mb-4" placeholder="Course">
			</div>

			<div class="form-inline">
				<input type="text" name="country" value="${Student.country}"
					class="form-control mb-4" placeholder="Country">
			</div>

			<input name="${_csrf.parameterName }" type="hidden"
				value="${_csrf.token}" />
			<button type="submit" class="btn btn-info" style="width:30%;border-radius:50px">Save</button>

		</form>
		<div style="text-align:center;margin:1rem"><a href="/api/students/fetchAllStudents" >Back to Students List</a></div>

	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Student</title>
<!-- Bootstrap CSS --> 
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-light">
	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>
	<div class="container py-5">
		<!-- Heading -->
		<div class="text-center mb-5">
			<h1 class="fw-bold text-dark">
				<i class="bi bi-trash-fill text-danger"></i> Delete Student
			</h1>
			<p class="text-secondary">Enter Student ID to delete record
				permanently</p>
		</div>
		<!-- Card -->
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card border-0 shadow-lg rounded-4">
					<div class="card-header bg-dark text-white py-3 rounded-top-4">
						<h4 class="mb-0 text-center">
							<i class="bi bi-exclamation-triangle-fill text-warning"></i>
							Warning Delete Section
						</h4>
					</div>
					<div class="card-body p-4">
						<form action="DeleteServlet" method="get">
							<div class="mb-4">
								<label class="form-label fw-bold"> Student ID </label> <input
									type="number" name="id" class="form-control form-control-lg"
									placeholder="Enter Student ID" required>
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-danger btn-lg">
									<i class="bi bi-trash-fill"></i> Delete Now
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- Extra CSS -->
	<style>
body {
	background: #f5f7fa;
}
.card {
	transition: 0.4s;
}
.card:hover {
	transform: translateY(-4px);
}
.btn {
	transition: 0.3s;
}
.btn:hover {
	transform: translateY(-2px);
}
</style>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
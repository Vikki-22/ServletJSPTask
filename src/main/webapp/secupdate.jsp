<%@page import="Entity.student"%>
<%student s = (student) request.getAttribute("student");%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Student</title>
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
	<!-- Main Section -->
	<section class="register-section">
		<div class="container">
			<div class="row justify-content-center align-items-center min-vh-100">
				<div class="col-lg-5 col-md-8">
					<!-- Card -->
					<div class="card border-0 shadow-lg rounded-5 overflow-hidden">
						<!-- Header -->
						<div class="bg-primary text-center py-4">
							<h2 class="text-white fw-bold mb-0">
								<i class="bi bi-pencil-square"></i> Update Student</h2>
							<p class="text-light mt-2 mb-0">Update Student Details Carefully</p>
						</div>
						<!-- Form -->
						<div class="card-body p-5">
							<form action="UpdateServlet" method="post">
								<!-- Hidden ID -->
							<div class="mb-4">
									<label class="form-label fw-bold"> <i
										class="bi bi-person-fill text-primary"></i> Student Id
									</label> <input type="text" name="id" 
										class="form-control form-control-lg rounded-4" required>
								</div>
								<div class="mb-4">
									<label class="form-label fw-bold"> <i
										class="bi bi-person-fill text-primary"></i> Student Name
									</label> <input type="text" name="name" 
										class="form-control form-control-lg rounded-4" required>
								</div>
								<div class="mb-4">
									<label class="form-label fw-bold"> <i
										class="bi bi-calendar-fill text-success"></i> Student Age
									</label> <input type="number" name="age" 
										class="form-control form-control-lg rounded-4" required>
								</div>
								<div class="mb-4">
									<label class="form-label fw-bold"> <i
										class="bi bi-book-fill text-danger"></i> Course Name
									</label> <input type="text" name="course" 
										class="form-control form-control-lg rounded-4" required>
								</div>
								<!-- Buttons -->
								<div class="d-grid gap-3">
									<button type="submit"
										class="btn btn-primary btn-lg rounded-pill fw-bold shadow">
										<i class="bi bi-check-circle-fill"></i> Update Data
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- CSS -->
	<style>
body {
	background: #f5f7fa;
	font-family: Arial, sans-serif;
}

/* Section */
.register-section {
	padding: 40px 0;
}

/* Card Animation */
.card {
	transition: 0.4s;
}

.card:hover {
	transform: translateY(-5px);
}

/* Input */
.form-control {
	border: 2px solid #e9ecef;
	transition: 0.3s;
}

.form-control:focus {
	box-shadow: none;
	border-color: #0d6efd;
}

/* Buttons */
.btn {
	transition: 0.3s;
}

.btn:hover {
	transform: translateY(-3px);
}
</style>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<nav
	class="navbar navbar-expand-lg navbar-dark bg-dark shadow-lg py-3 sticky-top">
	<div class="container">

		<!-- Logo -->
		<a class="navbar-brand fw-bold fs-2 text-warning" href="index.jsp">
			<i class="bi bi-mortarboard-fill"></i> Student
		</a>

		<!-- Toggle Button -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>

		</button>

		<!-- Navbar Menu -->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto mb-2 mb-lg-0 gap-2">
				<!-- Add Student -->
				<li class="nav-item"><a
					class="nav-link px-3 py-2 rounded-pill fw-semibold text-white hover-link"
					href="add.jsp"> <i class="bi bi-person-plus-fill"></i> Add
						Student
				</a></li>

				<!-- Read Student -->
				<li class="nav-item"><a
					class="nav-link px-3 py-2 rounded-pill fw-semibold text-white hover-link"
					href="SecondServlet"> <i class="bi bi-book-fill"></i> Read
						Student
				</a></li>

				<!-- Update Student -->
				<li class="nav-item"><a
					class="nav-link px-3 py-2 rounded-pill fw-semibold text-white hover-link"
					href="secupdate.jsp"> <i class="bi bi-pencil-square"></i>
						Update Student
				</a></li>

				<!-- Delete Student -->
				<li class="nav-item"><a
					class="nav-link px-3 py-2 rounded-pill fw-semibold text-white hover-link"
					href="delete.jsp"> <i class="bi bi-trash-fill"></i> Delete
						Student

				</a></li>
			</ul>

			<!-- Search Form -->
			<form class="d-flex mt-3 mt-lg-0">
				<input class="form-control rounded-pill me-2 border-0 shadow-sm"
					type="search" placeholder="Search Student..." />
				<button class="btn btn-warning rounded-pill fw-bold px-4"
					type="submit"> Search
				</button>
			</form>
		</div>
	</div>
</nav>
<style>
body {
	background-color: #f5f7fa;
}

/* Navbar */
.navbar {
	transition: 0.4s;
}

/* Hover Effect */
.hover-link {
	transition: 0.3s;
}

.hover-link:hover {
	background-color: #0d6efd;
	color: white !important;
	transform: translateY(-2px);
}

/* Search Box */
.form-control:focus {
	box-shadow: none;
	border: 2px solid #ffc107;
}

/* Icon Gap */
.nav-link i, .navbar-brand i, .btn i {
	margin-right: 6px;
}

/* Mobile Responsive */
@media ( max-width :991px) {
	.navbar-nav {
		margin-top: 20px;
		text-align: center;
	}
	.nav-item {
		width: 100%;
	}
	.d-flex {
		margin-top: 20px;
	}
}
</style>

<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
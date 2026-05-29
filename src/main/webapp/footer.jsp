<!-- Bootstrap Icons CDN -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<footer
	class="bg-dark text-light pt-5 pb-3 mt-5 border-top border-warning border-3">
	<div class="container">
		<div class="row g-4">
			<!-- About -->
			<div class="col-md-4">
				<h3 class="fw-bold text-warning mb-3">
					<i class="bi bi-mortarboard-fill"></i> Student Management
				</h3>

				<p class="text-light footer-text">Modern Student Management
					System using JSP, Servlet, JDBC and Bootstrap.</p>

				<!-- Social Icons -->
				<div class="d-flex gap-3 mt-4">
					<a href="#" class="social-icon"> <i class="bi bi-facebook"></i>
					</a> <a href="#" class="social-icon"> <i class="bi bi-instagram"></i>
					</a> <a href="#" class="social-icon"> <i class="bi bi-github"></i>
					</a> <a href="#" class="social-icon"> <i class="bi bi-linkedin"></i>
					</a>
				</div>
			</div>

			<!-- Links -->
			<div class="col-md-4">
				<h4 class="fw-bold text-warning mb-3">
					<i class="bi bi-link-45deg"></i> Quick Links
				</h4>
				<ul class="list-unstyled footer-links">
					<li class="mb-3"><a href="index.jsp"
						class="text-decoration-none text-light"> <i
							class="bi bi-house-door-fill"></i> Home
					</a></li>

					<li class="mb-3"><a href="add.jsp"
						class="text-decoration-none text-light"> <i
							class="bi bi-person-plus-fill"></i> Add Student
					</a></li>
					<li class="mb-3"><a href="SecondServlet"
						class="text-decoration-none text-light"> <i
							class="bi bi-book-fill"></i> Read Student
					</a></li>
				</ul>

			</div>

			<!-- Contact -->
			<div class="col-md-4">
				<h4 class="fw-bold text-warning mb-3">
					<i class="bi bi-telephone-fill"></i> Contact
				</h4>

				<p>
					<i class="bi bi-envelope-fill text-warning"></i>
					codewithvikki@gmail.com
				</p>

				<p>
					<i class="bi bi-telephone-fill text-warning"></i> +91 6263738708
				</p>
			</div>
		</div>
		<hr class="my-4 text-secondary">

		<!-- Bottom -->
		<div class="text-center">
			<p class="mb-0">
				© 2026 Student Management System | Designed By <span
					class="text-warning fw-bold"> Code With Vikki </span>
			</p>
		</div>
	</div>
</footer>
<style>
.footer-text {
	line-height: 1.8;
}

.footer-links a {
	transition: 0.3s;
	display: inline-block;
}

.footer-links a:hover {
	color: #ffc107 !important;
	transform: translateX(6px);
}

.social-icon {
	width: 42px;
	height: 42px;
	border: 2px solid #ffc107;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #ffc107;
	text-decoration: none;
	transition: 0.3s;
}

.social-icon:hover {
	background-color: #ffc107;
	color: black;
	transform: translateY(-5px);
}
</style>
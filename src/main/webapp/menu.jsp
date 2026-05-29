<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Main Body Section -->

<section class="container my-5">
	<div class="row align-items-center g-5">
		<!-- Left Content -->
		<div class="col-lg-6">
			<div class="p-5 bg-white rounded-4 shadow-lg">
				<h1 class="fw-bold display-4">
					Welcome To 
					<span class="text-warning"> Student Management System </span>
				</h1>
				<p class="text-secondary mt-4 fs-5">Manage student records
					easily using JSP, Servlet, JDBC, MySQL and Bootstrap. Add, Read,
					Update and Delete student information with a modern UI.</p>
				<!-- Buttons -->
				<div class="mt-4">
					<!-- First Row -->
					<div class="d-flex gap-3 mb-3 flex-wrap">
						<!-- Add -->
						<a href="add.jsp"
							class="btn btn-warning btn-lg rounded-pill px-4 shadow"> <i
							class="bi bi-person-plus-fill"></i> Add Student
						</a>
						<!-- View -->
						<a href="SecondServlet"
							class="btn btn-dark btn-lg rounded-pill px-4 shadow"> <i
							class="bi bi-book-fill"></i> View Students
						</a>
					</div>
					<!-- Second Row -->
					<div class="d-flex gap-3 flex-wrap">
						<!-- Update -->
						<a href="UpdateServlet"
							class="btn btn-primary btn-lg rounded-pill px-4 shadow"> <i
							class="bi bi-pencil-square"></i> Update Student
						</a>
						<!-- Delete -->
						<a href="DeleteServlet"
							class="btn btn-danger btn-lg rounded-pill px-4 shadow"> <i
							class="bi bi-trash-fill"></i> Delete Student
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Right Image -->
		<div class="col-lg-6 text-center">
			<img src="https://cdn-icons-png.flaticon.com/512/3135/3135755.png"
				class="img-fluid" style="max-height: 450px;" alt="Student Image">
		</div>
	</div>
</section>

<!-- Extra CSS -->
<style>
body {
	background: #f5f7fa;
}

/* Button Hover Animation */
.btn {
	transition: 0.3s;
}

.btn:hover {
	transform: translateY(-3px);
}

/* Image Animation */
img {
	animation: float 3s ease-in-out infinite;
}

@
keyframes float { 0%{
	transform: translateY(0px);
}
50
%
{
transform
:
translateY(
-12px
);
}
100
%
{
transform
:
translateY(
0px
);
}
}
</style>
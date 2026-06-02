
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	background: #f4f7fc;
}

/* Dashboard Section */
.premium-dashboard {
	background: linear-gradient(135deg, #0f172a, #1e3a8a, #2563eb);
	padding: 70px;
	border-radius: 35px;
	box-shadow: 0 25px 60px rgba(0, 0, 0, .15);
	position: relative;
	overflow: hidden;
}

/* Decorative Circle */
.premium-dashboard::before {
	content: '';
	position: absolute;
	width: 350px;
	height: 350px;
	background: rgba(255, 255, 255, .08);
	border-radius: 50%;
	top: -150px;
	right: -120px;
}

.premium-dashboard::after {
	content: '';
	position: absolute;
	width: 250px;
	height: 250px;
	background: rgba(255, 255, 255, .05);
	border-radius: 50%;
	bottom: -120px;
	left: -80px;
}

/* Badge */
.custom-badge {
	background: #ffc107;
	color: #000;
	padding: 10px 18px;
	border-radius: 30px;
	font-size: 14px;
	font-weight: 600;
}

/* Heading */
.main-title {
	font-size: 58px;
	font-weight: 800;
	color: white;
	margin-top: 15px;
}

.gradient-text {
	background: linear-gradient(90deg, #ffc107, #ff6b00);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

/* Description */
.main-desc {
	color: #dbeafe;
	font-size: 18px;
	line-height: 1.8;
	margin-top: 20px;
}

/* Buttons */
.action-buttons {
	margin-top: 35px;
	display: flex;
	gap: 15px;
	flex-wrap: wrap;
}

.action-buttons .btn {
	font-weight: 600;
	transition: .3s;
}

.action-buttons .btn:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
}

/* Counter Card */
.student-counter-card {
	background: rgba(255, 255, 255, .12);
	backdrop-filter: blur(12px);
	border: 1px solid rgba(255, 255, 255, .2);
	border-radius: 30px;
	padding: 45px;
	text-align: center;
	color: white;
	box-shadow: 0 10px 30px rgba(0, 0, 0, .2);
}

.counter-icon {
	font-size: 70px;
	color: #ffc107;
	margin-bottom: 15px;
}

.counter-number {
	font-size: 90px;
	font-weight: 900;
	color: #ffc107;
	line-height: 1;
}

.student-counter-card h5 {
	font-weight: 600;
	margin-bottom: 15px;
}

.student-counter-card p {
	color: #e5e7eb;
	font-size: 17px;
}

/* Responsive */
@media ( max-width :768px) {
	.main-title {
		font-size: 40px;
	}
	.counter-number {
		font-size: 70px;
	}
	.premium-dashboard {
		padding: 40px;
	}
}
</style>
</head>
<body>

<%@ include file="navbar.jsp"%>

	<section class="container py-5">
		<div class="premium-dashboard">
			<div class="row align-items-center">

				<!-- Left Side -->
				<div class="col-lg-7">
					<span class="custom-badge"> 🎓 Student Management System </span>
					<h1 class="main-title">
						Manage Students <span class="gradient-text"> Smartly </span>
					</h1>
					<p class="main-desc">Manage student records efficiently using
						JSP, Servlet, JDBC, MySQL and Bootstrap. Add, View, Update and
						Delete student data with a modern professional dashboard.</p>
					<div class="action-buttons">
						<a href="add.jsp" class="btn btn-warning btn-lg rounded-pill px-4">
							<i class="bi bi-person-plus-fill"></i> Add Student
						</a> <a href="SecondServlet"
							class="btn btn-light btn-lg rounded-pill px-4"> <i
							class="bi bi-eye-fill"></i> View Students
						</a> <a href="UpdateServlet"
							class="btn btn-primary btn-lg rounded-pill px-4"> <i
							class="bi bi-pencil-square"></i> Update
						</a> <a href="DeleteServlet"
							class="btn btn-danger btn-lg rounded-pill px-4"> <i
							class="bi bi-trash-fill"></i> Delete
						</a>
					</div>
				</div>

				<!-- Right Side -->

				<div class="col-lg-5 mt-5 mt-lg-0">
					<div class="student-counter-card">
						<div class="counter-icon">
							<i class="bi bi-mortarboard-fill"></i>
						</div>
						<h5>Total Students</h5>
						<h1 class="counter-number">${totalStudents}</h1>
						<p>Registered In Database</p>
					</div>
				</div>
			</div>
		</div>
	</section>
 <%@ include file="footer.jsp"%>
</body>
</html>

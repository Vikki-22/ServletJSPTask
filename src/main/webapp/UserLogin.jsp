<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:'Segoe UI',sans-serif;
}

body{
	min-height:100vh;
	background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
	display:flex;
	justify-content:center;
	align-items:center;
}

.register-card{
	width:100%;
	max-width:450px;
	background:rgba(255,255,255,0.1);
	backdrop-filter:blur(15px);
	border-radius:25px;
	padding:35px;
	box-shadow:0 8px 30px rgba(0,0,0,0.3);
	border:1px solid rgba(255,255,255,0.2);
	color:white;
}

.logo{
	text-align:center;
	font-size:60px;
	color:#ffc107;
	margin-bottom:10px;
}

.heading{
	text-align:center;
	margin-bottom:25px;
}

.heading h2{
	font-weight:700;
}

.form-control{
	height:50px;
	border-radius:12px;
	border:none;
	padding-left:45px;
}

.input-group{
	position:relative;
	margin-bottom:20px;
}

.input-group i{
	position:absolute;
	left:15px;
	top:50%;
	transform:translateY(-50%);
	color:#666;
	z-index:10;
}

.btn-register{
	height:50px;
	border-radius:12px;
	font-weight:bold;
	background:#ffc107;
	border:none;
	color:black;
	transition:0.3s;
}

.btn-register:hover{
	background:#ffca2c;
	transform:translateY(-2px);
}

.login-link{
	text-align:center;
	margin-top:20px;
}

.login-link a{
	color:#ffc107;
	text-decoration:none;
	font-weight:bold;
}

.login-link a:hover{
	text-decoration:underline;
}

</style>
</head>

<body>

<div class="register-card">

	<div class="logo">
		<i class="fa-solid fa-graduation-cap"></i>
	</div>

	<div class="heading">
		<h2>Student Registration</h2>
		<p>Create your account</p>
	</div>

	<form action="UserLoginServlet" method="post">

		<div class="input-group">
			<i class="fa-solid fa-user"></i>
			<input type="text"
				name="name"
				class="form-control"
				placeholder="Enter Full Name"
				required>
		</div>

		<div class="input-group">
			<i class="fa-solid fa-envelope"></i>
			<input type="email"
				name="email"
				class="form-control"
				placeholder="Enter Email"
				required>
		</div>

		<div class="input-group">
			<i class="fa-solid fa-lock"></i>
			<input type="password"
				name="password"
				class="form-control"
				placeholder="Enter Password"
				required>
		</div>

		<div class="d-grid">
			<button class="btn btn-register">
				<i class="fa-solid fa-user-plus"></i>
				Register Now
			</button>
		</div>

	</form>

	<div class="login-link">
		Already have an account ?
		<a href="login.jsp">Login Here</a>
	</div>

</div>

</body>
</html>
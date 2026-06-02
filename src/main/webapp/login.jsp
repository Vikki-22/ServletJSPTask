<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

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
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
}

.login-card{
    width:100%;
    max-width:430px;
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

.form-control{
    height:50px;
    border-radius:12px;
    border:none;
    padding-left:45px;
}

.btn-login{
    height:50px;
    border-radius:12px;
    border:none;
    font-weight:bold;
    background:#ffc107;
    color:black;
    transition:.3s;
}

.btn-login:hover{
    background:#ffca2c;
    transform:translateY(-2px);
}

.register-link{
    text-align:center;
    margin-top:20px;
}

.register-link a{
    color:#ffc107;
    text-decoration:none;
    font-weight:bold;
}

.register-link a:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="login-card">

<div class="logo">
    <i class="fa-solid fa-graduation-cap"></i>
</div>

<div class="heading">
    <h2>Student Login</h2>
    <p>Welcome Back</p>
</div>

<form action="loginServlet" method="post">

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
        <button type="submit" class="btn btn-login">
            <i class="fa-solid fa-right-to-bracket"></i>
            Login
        </button>
    </div>

</form>

<div class="register-link">
    Don't have an account?
    <a href="UserLogin.jsp">Register Here</a>
</div>


</div>

</body>
</html>

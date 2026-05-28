<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Form</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">
</head>

<body class="bg-light">


   <%@ include file="navbar.jsp" %>

    <div class="container d-flex justify-content-center align-items-center vh-100">

        <div class="card shadow-lg p-4 rounded-4" style="width: 420px;">

            <h2 class="text-center text-primary mb-4">
                Student Registration
            </h2>

            <!-- Form -->
            <form action="abc" method="post">

                <!-- Name -->
                <div class="mb-3">

                    <label class="form-label fw-bold">
                        Name
                    </label>

                    <input
                        type="text"
                        name="name"
                        class="form-control form-control-lg"
                        placeholder="Enter Name"
                        required>

                </div>

                <!-- Age -->
                <div class="mb-3">

                    <label class="form-label fw-bold">
                        Age
                    </label>

                    <input
                        type="number"
                        name="age"
                        class="form-control form-control-lg"
                        placeholder="Enter Age"
                        required>

                </div>

                <!-- Course -->
                <div class="mb-4">

                    <label class="form-label fw-bold">
                        Course
                    </label>

                    <input
                        type="text"
                        name="course"
                        class="form-control form-control-lg"
                        placeholder="Enter Course"
                        required>

                </div>

                <!-- Submit Button -->
                <button
                    type="submit"
                    class="btn btn-primary w-100 btn-lg mb-3">

                    Submit

                </button>

            </form>

            <!-- Read Data Button -->
            <a
                href="SecondServlet"
                class="btn btn-success w-100">

                Read All Data

            </a>

        </div>

    </div>

</body>

</html>
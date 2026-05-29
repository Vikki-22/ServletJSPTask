<%@page import="java.util.LinkedList"%>
<%@page import="Entity.student"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>All Students</title>

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

				<i class="bi bi-mortarboard-fill text-warning"></i> Student Records

			</h1>

			<p class="text-secondary">View All Registered Students</p>

		</div>

		<!-- Card -->
		<div class="card border-0 shadow-lg rounded-4">

			<div class="card-header bg-dark text-white py-3 rounded-top-4">

				<h4 class="mb-0">

					<i class="bi bi-table"></i> Student Data Table

				</h4>

			</div>

			<div class="card-body p-4">

				<div class="table-responsive">

					<table class="table table-hover align-middle text-center">

						<thead class="table-dark">

							<tr>

								<th>ID</th>
								<th>Name</th>
								<th>Age</th>
								<th>Course</th>
								<th>Update</th>
								<th>Delete</th>

							</tr>

						</thead>

						<tbody>

							<%
							LinkedList<student> ls = (LinkedList<student>) request.getAttribute("List");

							if (ls != null && !ls.isEmpty()) {

								for (student s : ls) {
							%>

							<tr>

								<td><%=s.getId()%></td>

								<td class="fw-semibold"><%=s.getName()%></td>

								<td><%=s.getAge()%></td>

								<td><%=s.getCourse()%></td>

								<td><a href="UpdateServlet?id=<%=s.getId()%>"
									class="btn btn-primary"> 
									<i class="bi bi-pencil-square"></i> Update </a></td>

								<td><a href="DeleteServlet?id=<%=s.getId()%>"
									class="btn btn-danger btn-sm rounded-pill px-3"> <i
										class="bi bi-trash-fill"></i> Delete

								</a></td>

							</tr>

							<%
							}

							} else {
							%>

							<tr>

								<td colspan="6" class="text-danger fw-bold py-4"><i
									class="bi bi-exclamation-circle-fill"></i> No Student Data
									Found</td>

							</tr>

							<%
							}
							%>

						</tbody>

					</table>

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

/* Card Hover */
.card {
	transition: 0.4s;
}

.card:hover {
	transform: translateY(-4px);
}

/* Table Hover */
.table tbody tr {
	transition: 0.3s;
}

.table tbody tr:hover {
	transform: scale(1.01);
	background: #f8f9fa;
}

/* Button Hover */
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
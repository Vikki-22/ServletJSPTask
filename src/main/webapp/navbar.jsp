<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-lg sticky-top">
    <div class="container-fluid px-4">

        <!-- Logo -->
        <a class="navbar-brand fw-bold fs-2 text-warning" href="DashboardServlet">
            <i class="bi bi-mortarboard-fill"></i> Student
        </a>

        <!-- Toggle Button -->
        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <!-- Menu -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 gap-2">

                <li class="nav-item">
                    <a class="nav-link hover-link" href="add.jsp">
                        <i class="bi bi-person-plus-fill"></i> Add Student
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link hover-link" href="SecondServlet">
                        <i class="bi bi-book-fill"></i> Read Student
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link hover-link" href="secupdate.jsp">
                        <i class="bi bi-pencil-square"></i> Update Student
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link hover-link" href="delete.jsp">
                        <i class="bi bi-trash-fill"></i> Delete Student
                    </a>
                </li>

            </ul>

            <!-- Search -->
            <form class="d-flex align-items-center me-2"
                action="SearchServlet"
                method="get">

                <input class="form-control search-box me-2"
                    type="search"
                    name="search"
                    placeholder="Search Student...">

                <button class="btn btn-warning search-btn"
                    type="submit">
                    <i class="bi bi-search"></i> Search
                </button>

            </form>

            <!-- Logout -->
            <a href="logoutServlet"
                class="nav-link text-white hover-link logout-btn">
                <i class="bi bi-box-arrow-right"></i>
            </a>

        </div>
    </div>
</nav>

<style>
body{
    background:#f5f7fa;
}

/* Navbar */
.navbar{
    background:#1f242b !important;
    padding:12px 0;
}

/* Menu */
.hover-link{
    color:white !important;
    font-weight:600;
    border-radius:30px;
    padding:10px 16px !important;
    transition:.3s;
    white-space:nowrap;
}

.hover-link:hover{
    background:#0d6efd;
    color:white !important;
}

/* Search */
.search-box{
    width:220px;
    border-radius:30px;
    border:none;
    height:42px;
}

.search-box:focus{
    box-shadow:none;
    border:2px solid #ffc107;
}

.search-btn{
    border-radius:30px;
    height:42px;
    font-weight:bold;
    padding:0 18px;
}

/* Logout */
.logout-btn{
    font-size:22px;
    padding:8px 12px !important;
    display:flex;
    align-items:center;
    justify-content:center;
}

/* Alignment Fix */
.navbar-collapse{
    align-items:center;
}

.navbar-nav{
    align-items:center;
}

/* Responsive */
@media(max-width:991px){

    .navbar-nav{
        margin-top:15px;
        text-align:center;
    }

    .nav-item{
        width:100%;
    }

    .d-flex{
        width:100%;
        margin-top:15px;
    }

    .search-box{
        width:100%;
    }

    .logout-btn{
        margin-top:10px;
    }
}
</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
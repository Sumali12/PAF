<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>Management</title>

<!--     Fonts and icons     -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

<!-- Nucleo Icons -->
<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />

<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />

<!-- CSS Files -->
<link id="pagestyle" href="assets/css/soft-ui-dashboard.css?v=1.0.1" rel="stylesheet" />
</head>

<body class="g-sidenav-show  bg-gray-100" onload="load()">
	<aside
		class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-left ms-3"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute right-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="pages/dashboard.html"> <img src="assets/img/logo-ct.png"
				class="navbar-brand-img h-100 w-15" alt="..."> <span
				class="ms-1 font-weight-bold">Dashboard</span>
			</a>
		</div>
		<hr class="horizontal dark mt-0">
		<div class="collapse navbar-collapse  w-auto"
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				

				<li class="nav-item"><a class="nav-link  active"
					href="sponsor.jsp">
						<div
							class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
							<svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
                <title>customer-support</title>
                <g id="Basic-Elements" stroke="none" stroke-width="1"
									fill="none" fill-rule="evenodd">
                  <g id="Rounded-Icons"
									transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF"
									fill-rule="nonzero">
                    <g id="Icons-with-opacity"
									transform="translate(1716.000000, 291.000000)">
                      <g id="customer-support"
									transform="translate(1.000000, 0.000000)">
                        <path class="color-background"
									d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z"
									id="Path" opacity="0.59858631"></path>
                        <path class="color-foreground"
									d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z"
									id="Path"></path>
                        <path class="color-foreground"
									d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z"
									id="Path"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
						</div> <span class="nav-link-text ms-1">Sponsor</span>
				</a></li>

			</ul>
		</div>
	</aside>
	<main class="main-content mt-1 border-radius-lg">


		<div class="row">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<h3 class="h4">sponsor</h3>
					</div>
					<div class="card-body">
						<form class="form-horizontal">
							<div class="form-group row">
								<label class="col-sm-3 form-control-label">sponsor id</label>
								<div class="col-sm-9">
									<input id="sponsor_id" type="text" placeholder="sponsor id"
										class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 form-control-label">organization</label>
								<div class="col-sm-9">
									<input id="organization" type="text" placeholder="organization"
										class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 form-control-label">product code</label>
								<div class="col-sm-9">
									<input id="product_code" type="text" placeholder="product code"
										class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 form-control-label">price</label>
								<div class="col-sm-9">
									<input id="price" type="text" placeholder="price"
										class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 form-control-label">name</label>
								<div class="col-sm-9">
									<input id="name" type="text" placeholder="name"
										class="form-control form-control-warning">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-9 offset-sm-3">
									<input onclick="save()" type="button" value="Save"
										class="btn btn-primary"> <input type="reset"
										value="Reset" class="btn btn-primary">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-lg-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<h3 class="h4">History</h3>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="table">
								<thead>
									<tr>
										<th>#</th>
										<th>sponsor id</th>
										<th>organization</th>
										<th>product code</th>
										<th>price</th>
										<th>name</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-12">
				<div class="card">
					<div class="card-header d-flex align-items-center">
						<div class="input-group mb-3">
							<input id="searchID" type="Number" class="form-control"
								placeholder="Search by ID" aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button onclick="search()" class="btn btn-outline-secondary"
									type="button">Search</button>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-hover" id="idTable">
								<thead>
									<tr>
										<th>#</th>
										<th>sponsor id</th>
										<th>organization</th>
										<th>product code</th>
										<th>price</th>
										<th>name</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>


		<footer class="footer pt-3">
			<div class="container-fluid">
				<div class="row align-items-center justify-content-lg-between">
					<div class="col-lg-6 mb-lg-0 mb-4">
						<div class="copyright text-center text-sm text-muted text-lg-left">
							©
							<script>
								document.write(new Date().getFullYear())
							</script>
							, <a href="#" class="font-weight-bold" target="_blank">GB
								Management</a>
						</div>
					</div>
				</div>
			</div>
		</footer>
		</div>
	</main>

	<!--   Core JS Files   -->
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/soft-ui-dashboard.min.js?v=1.0.1"></script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="ajax/jquery.3.2.1.min.js"></script>
	<script src="ajax/ajax.js"></script>
	<script src="ajax/Sponsor.js"></script>
</body>
</html>
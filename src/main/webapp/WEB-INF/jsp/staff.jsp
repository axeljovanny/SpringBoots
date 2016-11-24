<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>Staff Manager | Home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">


					<li><a href="new-staff">New Staff</a></li>
					<li><a href="all-staffs">All Staffs</a></li>


				</ul>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to the Staff Manager</h1>
				</div>
			</div>
		</c:when>


		<c:when test="${mode == 'MODE_STAFFS'}">
			<div class="container text-center" id="staffsDiv">
				<h3>My Staffs</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Address</th>
								<th>Email</th>
								<th>Store</th>
								<th>User Name</th>
								<th>Password</th>
								<th>Active</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="staff" items="${staffs}">
								<tr>
									<td>${staff.id}</td>
									<td>${staff.firstName}</td>
									<td>${staff.lastName}</td>
									<td>${staff.address}</td>
									<td>${staff.email}</td>
									<td>${staff.store}</td>
									<td>${staff.userName}</td>
									<td>${staff.password}</td>
									<td>${staff.active}</td>
									<td><a href="update-staff?id=${staff.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-staff?id=${staff.id}"><span
											class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>



		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Staff</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-staff">
					<input type="hidden" name="id" value="${staff.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstName"
								value="${staff.firstName}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastName"
								value="${staff.lastName}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${staff.address}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email"
								value="${staff.email}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Store</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="store"
								value="${staff.store}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">User Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="userName"
								value="${staff.userName}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="password"
								value="${staff.password}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Active</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="active" value="true" />
							<div class="col-sm-1">Yes</div>
							<input type="radio" class="col-sm-1" name="active" value="false"
								checked />
							<div class="col-sm-1">No</div>
						</div>
					</div>


					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>






	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
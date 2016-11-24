
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
    
    <title>Pub Manager | Home</title>
    
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
				
					<li><a href="new-pub">New Pub</a></li>
					<li><a href="all-pubs">All Pubs</a></li>
					
					
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode == 'MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to the Pubs Manager</h1>
				</div>
			</div>
		</c:when>
		
		
		<c:when test="${mode == 'MODE_PUBS'}">
			<div class="container text-center" id="pubsDiv">
				<h3>My Pubs</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Type</th>
								<th>Permission</th>
								<th>Address</th>
								<th>Schedule</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="pub" items="${pubs}">
								<tr>
									<td>${pub.id}</td>
									<td>${pub.name}</td>
									<td>${pub.type}</td>
									<td>${pub.permission}</td>
									<td>${pub.address}</td>
									<td>${pub.schedule}</td>
									<td><a href="update-pub?id=${pub.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-pub?id=${pub.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
		
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Pubs</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-pub">
					<input type="hidden" name="id" value="${pub.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" value="${pub.name}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="type" value="${pub.type}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Permission</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="permission" value="${pub.permission}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address" value="${pub.address}"/>
						</div>				
					</div>	
					<div class="form-group">
						<label class="control-label col-md-3">Schedule</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="schedule" value="${pub.schedule}"/>
						</div>				
					</div>
						
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>		
		
		
		
		
	
		
	</c:choose>

	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Войти</title>
	<link rel="shortcut icon" type="image/png" href="image/icon.png" />
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
	<jsp:include page="header.jsp" />
</div>

<div class="container-fullwidth">
	<div class="container" style="margin-top:35px">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Админ войти</strong>
						</h3>
					</div>

					<div class="panel-body">
						<form role="form">
							<div class="space" style="margin-top:20px"></div>
							<!-- <div class="alert alert-danger">Incorrect Username or
                                Password!</div> -->
							<div style="margin-bottom: 12px" class="input-group">
									<span class="input-group-addon">
										<i class="glyphicon glyphicon-user"></i></span>
								<input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Username">
							</div>

							<div style="margin-bottom: 12px" class="input-group">
									<span class="input-group-addon">
										<i class="glyphicon glyphicon-lock"></i></span>
								<input id="login-password" type="password" class="form-control" name="password" placeholder="Password">
							</div>

							<input type="submit" value="Войти" class="btn btn-success" />

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
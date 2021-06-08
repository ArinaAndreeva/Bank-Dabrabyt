<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Авторизация</title>
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
		<div class="row">
			<div class="jumbotron col-md-6 col-md-offset-3" style="margin-top: 30px">
				<h2 style="margin-bottom: 30px" class="col-md-10 col-md-offset-1 text-center text-danger">Войдите в Ваш аккаунт</h2>
				<div class="row">
					<div class="col-md-6 col-md-offset-2">
						<form method="post" action="LoginServlet">
							<div class="form-group">
								<%--@declare id="email"--%><label for="email">Имя пользователя</label>
									<input type="text" name="username" required class="form-control" id="account_number" placeholder="Имя пользователя">
							</div>
							<div class="form-group">
								<label for="password">Пароль</label> <input type="password" name="password" required class="form-control" id="password" placeholder="Пароль">
							</div>
							<div class="checkbox">
								<label><input name="remember" type="checkbox" value="Remember Me">Запомнить меня</label>
							</div>
							<%
							    String isPassOK = (String) request.getAttribute("isPassOK");
								if (isPassOK!=null && isPassOK.equals("No")) {
							%>
							<div class="alert alert-danger" role="alert">
								<strong>Ошибка входа:</strong> незарегистрированный аккаунт или введен неверный логин/пароль.
							</div>
							<%
								}
							%>
							<input type="submit" class="btn btn-danger btn-center btn-lg" value="Вход"></input>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
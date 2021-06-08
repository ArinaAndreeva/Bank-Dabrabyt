<%@page import="kursach.dabrabyt.bank.database.DatabaseOperations"%>
<%@page import="kursach.dabrabyt.bank.model.AccountModel"%>
<%@page import="kursach.dabrabyt.bank.database.JDBC_Connect"%>
<%@page import="java.sql.Connection,java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Аккаунт создан</title>
<link rel="shortcut icon" type="image/png" href="image/icon.png" />
<link rel="stylesheet" type="text/css" href="css/deposit.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>

	<%!String account_number;
	boolean allRight;
	AccountModel model = new AccountModel();
	DatabaseOperations dbOperation = new DatabaseOperations();%>

	<%
		model = (AccountModel) request.getAttribute("Account_details");
		allRight = dbOperation.setAccountInformation(model);
		if (allRight) {
	%>

	<div class="container-fullwidth">
		<div class="row" style="margin-top: 35px;">
			<div class="alert alert-success col-md-4 col-md-offset-4" role="alert">
				<h4 class="alert-heading"><strong>Поздравляем!</strong></h4>
				<p><strong>Аккаунт успешно зарегистрирован!</strong></p>
				<p class="mb-0">
					<b>Имя пользователя: </b>
					<%=model.getUsername()%>
				</p>
				<p class="mb-0">
					<b>Уникальный номер аккаунта: </b>
					<%=model.getAccount_number()%>
				</p>
			</div>
		</div>
		<%
			} else {
		%>
		<div class="container-fullwidth">
			<div class="row" style="margin-top: 35px;">
				<div class="alert alert-danger col-md-4 col-md-offset-4" role="alert">
					<strong>Упс!</strong>Возникли проблемы с подключением к базе данных.
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
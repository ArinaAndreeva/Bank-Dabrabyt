<%@page import="kursach.dabrabyt.bank.database.DatabaseOperations"%>
<%@ page import="kursach.dabrabyt.bank.model.DepositModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Депозит создан</title>
<link rel="shortcut icon" type="image/png" href="image/icon.png" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script rc="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>

	<%!int deposit_amount;
		boolean allRight;
		DepositModel model = new DepositModel();
		DatabaseOperations dbOperation = new DatabaseOperations();%>

	<%
		model = (DepositModel) request.getAttribute("Deposit_information");
		allRight = dbOperation.setDeposit(model);
		if (allRight) {
	%>

	<div class="container-fullwidth">
		<div class="row" style="margin-top: 50px;">
			<div class="alert alert-success col-md-4 col-md-offset-4"
				role="alert">
				<h4 class="alert-heading">Поздравляем!</h4>
				<p>
					<strong>Депозит успешно оформлен!</strong>
				</p>
				<p class="mb-0">
					<b>Номер договора: </b>
					<%=model.getAccount_number()%>
				</p>
				<p class="mb-0">
					<b>Сумма депозита: </b>
					<%=model.getDeposit_amount()%>
				</p>
			</div>
		</div>
		<%
			} else {
		%>
		<div class="container-fullwidth">
			<div class="row" style="margin-top: 35px;">
				<div class="alert alert-danger col-md-4 col-md-offset-4" role="alert">
					<strong>Упс!</strong>Возникли проблемы с оформлением депозита.
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>
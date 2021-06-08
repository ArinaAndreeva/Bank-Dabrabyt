<%@page import="kursach.dabrabyt.bank.database.DatabaseOperations"%>
<%@page import="kursach.dabrabyt.bank.database.JDBC_Connect"%>
<%@page import="java.sql.Connection"%>
<%@page import="kursach.dabrabyt.bank.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%!AccountModel ac;%>

<%
	ac = (AccountModel) session.getAttribute("userDetails");
	int account_number = ac.getAccount_number();
	JDBC_Connect connect = new JDBC_Connect();
	Connection conn = connect.getConnection();
	DatabaseOperations operations = new DatabaseOperations();
	ac = operations.getAccountInformation(conn, account_number);
%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><%=ac.getName() + " " + ac.getSurname()%></title>
<link rel="shortcut icon" type="image/png" href="image/icon.png" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/profile.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>

	<div class="container-fullwidth">
		<div class="jumbotron col-md-6 col-md-offset-3" style="margin-top: 35px">
			<div class="row">
				<div class="profile-head col-md-10 col-md-offset-1">
					<div class="col-md-4">
						<img class="img-circle img-responsive" alt="" src="image/user.png">
					</div>
					<div class="col-md-8">
						<h3><mark><%=ac.getName()+ac.getSurname()%></mark></h3>
						<ul>
							<li class="navli"><span class="glyphicon glyphicon-user"></span> <%=ac.getUsername()%></li>
							<li class="navli"><span class="glyphicon glyphicon-calendar"></span> <%=ac.getBirth()%></li>
							<li class="navli"><span class="glyphicon glyphicon-home"></span><%=ac.getAddress()%></li>
							<li class="navli"><span class="glyphicon glyphicon-phone"></span><%=ac.getMobile()%></li>
							<li class="navli"><span class="glyphicon glyphicon-envelope"></span><%=ac.getEmail()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="account_details col-md-10 col-md-offset-1" style="margin-top: 20px;">
					<h3>Информация об аккаунте</h3>
					<table class="table table-user-information col-md-6">
						<tbody>
							<tr>
								<td><b>Фамилия:</b></td>
								<td><%=ac.getSurname()%></td>
							</tr>
							<tr>
								<td><b>Имя:</b></td>
								<td><%=ac.getName()%></td>
							</tr>
							<tr>
								<td><b>Отчество:</b></td>
								<td><%=ac.getPatronymic()%></td>
							</tr>
							<tr>
								<td><b>Номер аккаунта:</b></td>
								<td><%=ac.getAccount_number()%></td>
							</tr>
							<tr>
								<td><b>Серия и номер паспорта:</b></td>
								<td><%=ac.getSeries()+ " " + ac.getNumber()%></td>
							</tr>
							<tr>
								<td><b>Идентификационный номер:</b></td>
								<td><%=ac.getIdentification()%></td>
							</tr>
							<tr>
								<td><b>Кем и когда выдан:</b></td>
								<td><%=ac.getAuthority()+ " " + ac.getDate()%></td>
							</tr>
							<tr>
								<td><b>Место рождения:</b></td>
								<td><%=ac.getBirthplace()%></td>
							</tr>
							<tr>
								<td><b>Город постоянного проживания:</b></td>
								<td><%=ac.getCity()%></td>
							</tr>
							<tr>
								<td><b>Домашний телефон:</b></td>
								<td><%=ac.getHome()%></td>
							</tr>
							<tr>
								<td><b>Место работы:</b></td>
								<td><%=ac.getWorkplace()%></td>
							</tr>
							<tr>
								<td><b>Должность:</b></td>
								<td><%=ac.getPosition()%></td>
							</tr>
							<tr>
								<td><b>Семейное положение:</b></td>
								<td><%=ac.getMarital()%></td>
							</tr>
							<tr>
								<td><b>Гражданство:</b></td>
								<td><%=ac.getCitizenship()%></td>
							</tr>
							<tr>
								<td><b>Инвалидность:</b></td>
								<td><%=ac.getDisability()%></td>
							</tr>
							<tr>
								<td><b>Пенсионер:</b></td>
								<td><%=ac.getPensioner()%></td>
							</tr>
							<tr>
								<td><b>Военнообязанный:</b></td>
								<td><%=ac.getMilitary()%></td>
							</tr>
							<tr>
								<td><b>Ежемесячный доход:</b></td>
								<td><%=ac.getIncome()%></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row"></div>
	</div>
</body>
</html>
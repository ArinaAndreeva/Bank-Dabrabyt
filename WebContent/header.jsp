<%@page import="kursach.dabrabyt.bank.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/header.css">
</head>
<div class="container-fullwidth">
	<div class="row hidden-xs topper">
	</div>
	<div class="row">
		<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Переключать навигацию</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand visible-xs-inline-block nav-logo" href="/">
					<img src="/images/logo-dark-inset.png" class="img-responsive" alt=""></a>
			</div>

			<%!AccountModel ac = null;%>

			<%
				ac = (AccountModel) session.getAttribute("userDetails");
			%>

			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav js-nav-add-active-class">
					<li><a href="index.jsp">О банке</a></li>
					<li><a href="CreateNewAccount.jsp">Создать аккаунт</a></li>
					<li><a href="DepositTypes.jsp">Оформить вклад</a></li>
				</ul>

				<%
					if (ac != null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<span class="glyphicon glyphicon-user"></span>
							<strong><%=ac.getUsername()%></strong>
							<span class="glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul class="dropdown-menu">
								<div class="navbar-login">
									<div class="row">
										<div class="col-md-4">
											<p class="text-center">
												<span class="glyphicon glyphicon-user icon-size"></span>
											</p>
										</div>
										<div class="col-md-12">
											<p class="text-left">
												<strong><%=ac.getUsername()%></strong>
											</p>
											<p class="text-left">
												<a href="Profile.jsp" class="btn btn-danger btn-block btn-sm">Профиль</a>
											</p>
										</div>
									</div>
								</div>
							<li class="divider navbar-login-session-bg"></li>
							<%
								if (ac.getUsername().equals("admin")) {
							%>
							<li><a href="CreateNewAccount.jsp">Добавить клиента</a></li>
							<li><a href="DepositTypes.jsp">Оформить вклад</a></li>
							<li><a href="AccountList.jsp">Список клиентов</a></li>
							<li><a href="DepositList.jsp">Просмотреть вклады</a></li>
							<%
								}
							%>
							<li class="divider"></li>
							<li><a href="LogOut.jsp">Выйти<span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
						</ul></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right hidden-xs">
					<a type="button" class="navbar-btn btn btn-danger" am-latosans="bold" href="LogIn.jsp">Войти</a>
				</ul>
				<%
					}
				%>
			</div>
		</div>
		</nav>
	</div>
</div>
</html>
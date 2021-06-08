<%@page import="kursach.dabrabyt.bank.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<%
		String value = request.getParameter("value");
	%>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><%=value%></title>
	<link rel="shortcut icon" type="image/png" href="image/icon.png" />
	<link href="css/deposit.css" rel="stylesheet">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
	<jsp:include page="header.jsp" />
</div>

<div class="container-fullwidth">
	<div class="row scheme-plan">
		<div class="col-md-6 col-md-offset-3">
			<h3 style="margin-bottom: 20px;"><b><%=value%></b></h3>
			<%
				if (value.equals("Вклад Быстрый")) {
			%>
			<p class="text-justify">Вы можете оформить вклад "Быстрый" посредством Дабрабыт-онлайн в любой
				день недели круглосуточно. Начисление процентов на сумму дополнительного взноса осуществляется с
				совершения операции пополнения. Вкладополучатель вправе в одностороннем порядке приостановить прием
				дополнительных взносов в соответствии с условиями договора, о чем предварительно уведомляет вкладчиков
				путем размещения соответствующей информации на сайте банка. Продление договора на новый срок не
				предусмотрено. Закрытие вклада посредством услуги Дабрабыт-онлайн существляется на текущий (расчетный)
				банковский счет. Online закрытие вклада доступно круглосуточно.</p>
			<%
			} else if (value.equals("Вклад Щедрый")) {
			%>
			<p class="text-justify">Вы можете оформить вклад "Щедрый" посредством Дабрабыт-онлайн в любой
				день недели круглосуточно. Начисление процентов на сумму дополнительного взноса осуществляется с
				совершения операции пополнения. Вкладополучатель вправе в одностороннем порядке приостановить прием
				дополнительных взносов в соответствии с условиями договора, о чем предварительно уведомляет вкладчиков
				путем размещения соответствующей информации на сайте банка. Продление договора на новый срок не
				предусмотрено. Закрытие вклада посредством услуги Дабрабыт-онлайн существляется на текущий (расчетный)
				банковский счет. Online закрытие вклада доступно круглосуточно.</p>
			<%
			} else if (value.equals("Вклад На мечту")) {
			%>
			<p class="text-justify">Вы можете оформить вклад "На мечту" посредством Дабрабыт-онлайн в любой
				день недели круглосуточно. Начисление процентов на сумму дополнительного взноса осуществляется с
				совершения операции пополнения. Вкладополучатель вправе в одностороннем порядке приостановить прием
				дополнительных взносов в соответствии с условиями договора, о чем предварительно уведомляет вкладчиков
				путем размещения соответствующей информации на сайте банка. Продление договора на новый срок
				предусмотрено <b>не более 2 раз</b>. Закрытие вклада посредством услуги Дабрабыт-онлайн существляется на текущий
				(расчетный) банковский счет. Online закрытие вклада доступно круглосуточно.</p>
			<%
			} else if (value.equals("Вклад Добрый")) {
			%>
			<p class="text-justify">Вы можете оформить вклад "Добрый" посредством Дабрабыт-онлайн в любой
				день недели круглосуточно. Начисление процентов на сумму дополнительного взноса осуществляется с
				совершения операции пополнения. Вкладополучатель вправе в одностороннем порядке приостановить прием
				дополнительных взносов в соответствии с условиями договора, о чем предварительно уведомляет вкладчиков
				путем размещения соответствующей информации на сайте банка. Продление договора на новый срок
				предусмотрено <b>не более 9 раз</b>. Закрытие вклада посредством услуги Дабрабыт-онлайн существляется на текущий (расчетный)
				банковский счет. Online закрытие вклада доступно круглосуточно.</p>
			<%
				}
			%>
			<h3 style="margin-top: 35px; margin-bottom: 20px;"><b>Условия</b></h3>
			<ul>
				<%
					if (value.equals("Вклад Быстрый")) {
				%>
				<li>вид вклада - срочный безотзывной</li>
				<li>срок размещения - от 2 до 13 месяцев</li>
				<li>валюты вклада - BYN, USD, EUR, RUB</li>
				<li>фиксированная ставка - 16,5% годовых для BYN; 1,25% - USD; 1,0% - EUR; 4,2% - RUB</li>
				<li>минимальная сумма - 500 BYN/1 500 USD/1 500 EUR/50 000 RUB</li>
				<%
				} else if (value.equals("Вклад Щедрый")) {
				%>
				<li>вид вклада - срочный безотзывной</li>
					<li>срок размещения - от 3, 7, 13 или 24 месяца</li>
				<li>валюты вклада - BYN, USD, EUR, RUB</li>
				<li>фиксированная ставка - 12,25% годовых для BYN; 2,3% - USD; 1,3% - EUR; 7,0% - RUB</li>
				<li>минимальная сумма - 10 BYN/5 USD/5 EUR/300 RUB</li>
				<%
				} else if (value.equals("Вклад На мечту")) {
				%>
				<li>вид вклада - срочный отзывной</li>
				<li>срок размещения - 3 месяца</li>
				<li>валюты вклада - BYN, USD, EUR, RUB</li>
				<li>фиксированная ставка - 13,0% годовых для BYN; 0,75% - USD; 0,5% - EUR; 2,0% - RUB</li>
				<li>минимальная сумма - 10 BYN/5 USD/5 EUR/300 RUB</li>
				<%
				} else if (value.equals("Вклад Добрый")) {
				%>
				<li>вид вклада - срочный безотзывной</li>
				<li>срок размещения - 35 дней</li>
				<li>валюты вклада - BYN, USD, EUR, RUB</li>
				<li>фиксированная ставка - 16,0% годовых для BYN; 1,25% - USD; 1,0% - EUR; 4,2% - RUB</li>
				<li>минимальная сумма - 10 BYN/5 USD/5 EUR/300 RUB</li>
				<%
					}
				%>
			</ul>
		</div>

		<%
			AccountModel ac = null;
			ac = (AccountModel) session.getAttribute("userDetails");
		%>


		<div class="form col-md-6 col-md-offset-3" style="margin-top: 35px;">
			<div class="row">
				<form action="DepositSchemeServlet" method="post">
				<div class="col-sm-4 form-group">
					<label>Номер аккаунта</label>
						<input type="text" required placeholder="Введите номер аккаунта" class="form-control" name="account_number"
							   value="<%=ac.getAccount_number()%>">
					<label>Срок вклада</label>
					<div class="input-group-btn">
						<%
							if (value.equals("Вклад Быстрый")) {
						%>
						<select class="form-control btn btn-default" name="deposit_term">
							<option>2 месяца</option>
							<option>3 месяца</option>
							<option>4 месяца</option>
							<option>5 месяцев</option>
							<option>6 месяцев</option>
							<option>7 месяцев</option>
							<option>8 месяцев</option>
							<option>9 месяцев</option>
							<option>10 месяцев</option>
							<option>11 месяцев</option>
							<option>12 месяцев</option>
							<option>13 месяцев</option>
						</select>
						<%
						} else if (value.equals("Вклад Щедрый")) {
						%>
						<select class="form-control btn btn-default" name="deposit_term">
							<option>3 месяца</option>
							<option>7 месяцев</option>
							<option>13 месяцев</option>
							<option>24 месяца</option>
						</select>
						<%
						} else if (value.equals("Вклад На мечту")) {
						%>
						<input type="text" class="form-control" name="deposit_term" value="3 месяца">
						<%
						} else if (value.equals("Вклад Добрый")) {
						%>
						<input type="text" class="form-control" name="deposit_term" value="35 дней">
						<%
							}
						%>
					</div>
				</div>
				<div class="col-sm-4 form-group">
					<label>Процентная ставка</label>
					<div class="input-group-btn">
						<%
							if (value.equals("Вклад Быстрый")) {
						%>
						<select class="form-control btn btn-default" name="deposit_rate">
							<option>16,5%</option>
							<option>1,25%</option>
							<option>1,0%</option>
							<option>4,2%</option>
						</select>
						<%
						} else if (value.equals("Вклад Щедрый")) {
						%>
						<select class="form-control btn btn-default" name="deposit_rate">
							<option>12,25%</option>
							<option>2,3%</option>
							<option>1,3%</option>
							<option>7,0%</option>
						</select>
						<%
						} else if (value.equals("Вклад На мечту")) {
						%>
						<select class="form-control btn btn-default" name="deposit_rate">
							<option>13,0%</option>
							<option>0,75%</option>
							<option>0,5%</option>
							<option>2,0%</option>
						</select>
						<%
						} else if (value.equals("Вклад Добрый")) {
						%>
						<select class="form-control btn btn-default" name="deposit_rate">
							<option>16,0%</option>
							<option>1,25%</option>
							<option>1,0%</option>
							<option>4,2%</option>
						</select>
						<%
							}
						%>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 form-group">
					<label>Валюта вклада</label>
					<div class="input-group-btn">
						<select class="form-control btn btn-default" name="deposit_currency">
							<option>BYN</option>
							<option>USD</option>
							<option>EUR</option>
							<option>RUB</option>
						</select>
					</div>
				</div>
				<div class="col-sm-4 form-group">
					<label>Сумма вклада</label><input type="text" placeholder="Введите сумму" class="form-control" name="deposit_amount">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 form-group">
					<label>Пароль</label><input type="password" placeholder="Введите пароль" class="form-control" name="password">
				</div>
				<div class="col-sm-4 form-group">
					<label>Повторите пароль</label><input type="password" placeholder="Повторите пароль" class="form-control" name="re_password">
				</div>
			</div>
		</div>

				<div class="col-md-4 text-center" style="margin-top: 10px; margin-left: 365px;">

						<%
							if (ac != null) {
						%>
						<input type="hidden" name="account_number" value="<%=ac.getAccount_number()%>" />

						<%
							if (value.equals("Вклад Быстрый")) {
						%>
						<input type="hidden" name="deposit_type" value="cрочный безотзывной" />
						<input type="hidden" name="value" value="Вклад Быстрый" />
						<%
						} else if (value.equals("Вклад Щедрый")) {
						%>
						<input type="hidden" name="deposit_type" value="cрочный безотзывной" />
						<input type="hidden" name="value" value="Вклад Щедрый" />
						<%
						} else if (value.equals("Вклад На мечту")) {
						%>
						<input type="hidden" name="deposit_type" value="cрочный отзывной" />
						<input type="hidden" name="value" value="Вклад На мечту" />
						<%
						} else if (value.equals("Вклад Добрый")) {
						%>
						<input type="hidden" name="deposit_type" value="cрочный безотзывной" />
						<input type="hidden" name="value" value="Вклад Добрый" />
						<%
							}
						%>

						<%
							}
						%>

						<%
							if (ac != null) {
						%>
						<%
							String Not_Enough = (String) request.getAttribute("Not_Enough");
							if (Not_Enough != null && Not_Enough.equals("Yes")) {
						%>
						<div class="col-md-12" style="margin-top:10px;">
							<div class="alert alert-danger" role="alert">
								<strong>Внимание!</strong>Отказано в совершении депозита.
							</div>
						</div>
						<%
							}
						%>
						<div class="row" style="margin-top: 20px; margin-left: 2px">
							<input type="submit" value="Оформить"
								   class="btn btn-lg btn-success btn-danger" />
						</div>
						<%
						} else {
						%>

						<div class="row">
							<div class="alert alert-danger" role="alert" style="margin-top: 10px;">
								<strong>Внимание!</strong> Для начала Вам необходимо войти.
							</div>
						</div>

						<%
							}
						%>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
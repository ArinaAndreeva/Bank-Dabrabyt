<%@page import="kursach.dabrabyt.bank.database.DatabaseOperations"%>
<%@page import="java.sql.Connection"%>
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
	<title>Вклады для физических лиц. Открыть онлайн банковский вклад</title>
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

	<div class="row" style="margin-top: 35px;">
		<div class="col-md-6 col-md-offset-3">
			<h3 style="font-weight: 600; margin-bottom: 25px;">Что такое депозит?</h3>
			<p class="text-justify" >
				<b>Банковский депозит</b> – эффективный финансовый инструмент, который позволяет не только
				сохранить свои сбережения, но и приумножить их. Вклад работает следующим образом: клиент вкладывает
				средства и получает дополнительный доход в виде процентов. При этом интересы вкладчика защищены не только
				банком, но и государством: по окончании срока действия договора вы гарантированно получите итоговую сумму.
				<br><b>Оформить вклад можно в различной валюте:</b> белорусских или российских рублях, долларах США, евро.
				Клиент получает возможность подобрать программу с оптимальными условиями – периодом, ставкой, пополнением,
				досрочным снятием денег и др.</br>
				<b>"Банк Дабрабыт" </b>предлагает открыть вклад на выгодных условиях. Сделать это можно в офисе банка или онлайн –
				через систему Дабрабыт-онлайн. Вам нужно лишь выбрать подходящую программу.</p>
		</div>
	</div>
	<div class="row scheme">
		<div class="col-md-6 col-md-offset-3">
			<h3 style="font-weight: 600;margin-bottom: 30px;">Виды депозитов</h3>
			<div class="col-md-6">
				<div class="well">
					<h3 class="muted text-center" style="color:#B22222;">Вклад "Быстрый"</h3>
					<p class="text-left">
						<li>вид вклада - срочный безотзывной</li>
						<li>валюта вклада - BYN/USD/EUR/RUB</li>
						<li>срок размещения - 13 месяцев</li>
						<li>фиксированная ставка - 16,5% годовых в BYN</li>
						<li>возможность совершения расходных операций по снятию капитализированных процентов</li>
						<li>ежедневное начисление и выплата процентов по вкладу</li>
					</p>
					<div class="text-center">
						<p>
							<a class="btn btn-success btn-danger" href="SingleDeposit.jsp?value=Вклад Быстрый">
								<i class="icon-ok"></i>Выбрать</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="well">
					<h3 class="muted text-center" style="color:#B22222;">Вклад "Щедрый"</h3>
					<p class="text-left">
						<li>вид вклада - срочный безотзывной</li>
						<li>валюта вклада - BYN/USD/EUR/RUB</li>
						<li>срок размещения - 3/7/13/24 месяца</li>
						<li>фиксированная ставка - 12,25% годовых в BYN</li>
						<li>возможность внесения дополнительных взносов</li>
						<li>возможность совершения расходных операций по снятию капитализированных процентов</li>
					</p>
					<div class="text-center">
						<p>
							<a class="btn btn-success btn-danger" href="SingleDeposit.jsp?value=Вклад Щедрый">
								<i class="icon-ok"></i>Выбрать</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="well">
					<h3 class="muted text-center" style="color:#B22222;">Вклад "На мечту"</h3>
					<p class="text-left">
						<li>вид вклада - срочный отзывной</li>
						<li>валюта вклада - BYN/USD/EUR/RUB</li>
						<li>срок размещения - 3 месяца</li>
						<li>фиксированная ставка - 13,0% годовых в BYN</li>
						<li>возможность совершения расходных операций по снятию капитализированных процентов</li>
						<li>продление договора на новый срок при неистребовании вклада в дату возврата</li>
					</p>
					<div class="text-center">
						<p>
							<a class="btn btn-success btn-danger" href="SingleDeposit.jsp?value=Вклад На мечту"><i class="icon-ok"></i>
								Выбрать</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="well">
					<h3 class="muted text-center" style="color:#B22222;">Вклад "Добрый"</h3>
					<p class="text-left">
						<li>вид вклада - срочный безотзывной</li>
						<li>валюта вклада - BYN/USD/EUR/RUB</li>
						<li>срок размещения - 35 дней</li>
						<li>фиксированная ставка - 16,0% годовых в BYN</li>
						<li>возможность совершения расходных операций по снятию капитализированных процентов</li>
						<li>продление договора на новый срок при неистребовании вклада в дату возврата</li>
					</p>
					<div class="text-center">
						<p>
							<a class="btn btn-success btn-danger" href="SingleDeposit.jsp?value=Вклад Добрый"><i class="icon-ok"></i>
								Выбрать</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
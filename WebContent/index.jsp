<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Банк Дабрабыт</title>
	<link rel="shortcut icon" type="image/png" href="image/icon.png" />
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<div class="row">
	<jsp:include page="header.jsp" />
</div>
<div class="container-fullwidth" style="margin-top: 20px">
	<div class="row">
		<div class="col-md-12">
			<div id="carousel-example-generic" class="carousel slide"
				 data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">
						<img src="image/deposit2.png" alt="First slide">

					</div>
					<div class="item">
						<img src="image/deposit3.png" alt="Second slide">

					</div>

					<div class="item">
						<img src="image/deposit.png" alt="Third slide">

					</div>
				</div>

				<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span></a>
				<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"> </span></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="schemes" style="margin-bottom: 30px;">
			<div class="col-md-4 scheme-type-1">
				<h2 class="text-center text-medium">
					Почему именно "Дабрабыт"?
				</h2>
				<p class="col-md-10 col-md-offset-1 text-center scheme-text">
					- банк "Дабрабыт" предоставляет возможность онлайн-оформления вклада;
					<br>- выгодные условия для клиентов;</br>
					- ежедневное начисление и выплата процентов по вкладу.
				</p>
			</div>
			<div class="col-md-4 scheme-type-2">
				<h2 class="text-center text-medium main-text-2">
					Вклады
				</h2>
				<hr><p class="col-md-10 col-md-offset-1 text-center scheme-text main-text-2"></hr>
				<b>Оформите в Дабрабыт-онлайн!</b>
				<br>- виды вкладов: срочный отзывной и срочный безотзывной;<br>
				- валюты вкладов: BYN/USD/EUR/RUB;
				<br>- срок размещения: от 1 до 24 месяцев;</br>
				- вклады "Быстрый", "Щедрый", "На мечту" и "Добрый".
				</p>
				<div class="scheme-button col-md-4 col-md-offset-3">
					<hr><a type="button" class="btn btn-danger btn-lg"
                           href="DepositTypes.jsp" style="border-radius: 10px;">
						Оформить депозит
					</a></hr>
				</div>
			</div>
			<div class="col-md-4 scheme-type-3">
				<h2 class="text-center text-medium">
					Минимальная сумма
				</h2>
				<p class="col-md-10 col-md-offset-1 text-center scheme-text">
					- 500 BYN/1 500 USD/1 500 EUR/50 000 RUB – при оформлении вклада в отделении банка,
					а также посредством использования услуги "Дабрабыт-онлайн".
				</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Создать новый аккаунт</title>
	<link rel="shortcut icon" type="image/png" href="image/icon.png" />
	<link rel="stylesheet" type="text/css" href="css/create_new_account.css">
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/passwordChecker.js"></script>
</head>
<body>
<div class="row">
	<jsp:include page="header.jsp" />
</div>
<div class="container-fullwidth">
	<div class="row">
		<div class="account col-md-6 col-md-offset-3">
			<h1 class="well text-center">Создать новый аккаунт</h1>
			<div class="col-lg-12 well">
				<div class="row">
					<form action="CreateAccountServlet" method="post">
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-4 form-group">
									<label class="required">Фамилия</label><input type="text" placeholder="Фамилия" class="form-control" name="surname" required>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required">Имя</label><input type="text" placeholder="Полное имя" class="form-control" name="name" required>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required">Отчество</label><input type="text" placeholder="Отчество" class="form-control" name="patronymic" required>
								</div>
							</div>
							<div class="form-group">
								<label class="required">Дата рождения</label><input type="date" id="birth" name="birth" value="1990-01-01" min="1900-01-01" max="2005-01-01" required>
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<label class="required">Серия паспорта</label><input type="text" placeholder="Например, АВ, КВ, МР" class="form-control" name="series" required>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required">Номер паспорта</label><input type="text" placeholder="Например, 1234567" class="form-control" name="number" required>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required">Дата выдачи</label><input type="date" id="date" name="date" value="1990-01-01" min="1900-01-01" max="2021-04-30" required>
								</div>
							</div>
							<div class="form-group">
								<label class="required">Идентификационный номер</label> <textarea placeholder="14 символов, например, 1234567А001РВ6" rows="1" class="form-control" name="identification" required></textarea>
							</div>
							<div class="form-group">
								<label class="required">Орган, выдавший паспорт</label> <textarea placeholder="Например, УВД Бобруйского горисполкома Могилевской области" rows="1" class="form-control" name="authority" required></textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label class="required">Место рождения</label><input type="text" placeholder="Например, г. Барановичи" class="form-control" name="birthplace" required>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required">Город факт. проживания</label>
									<div class="input-group-btn">
										<select class="form-control btn btn-default" name="city" required>
											<option>г. Минск</option>
											<option>г. Брест</option>
											<option>г. Витебск</option>
											<option>г. Гомель</option>
											<option>г. Гродно</option>
											<option>г. Могилев</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="required">Адрес факт. проживания</label> <textarea placeholder="Например, г. Минск, ул. Леонида Беды, 4, к. 1, кв. 506а" rows="1" class="form-control" name="address" required></textarea>
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<label>Дом. телефон</label><input type="text" placeholder="8(0225)123456" class="form-control" name="home">
								</div>
								<div class="col-sm-4 form-group">
									<label>Моб.телефон</label><input type="text" placeholder="+375(44)1234567" class="form-control" name="mobile">
								</div>
								<div class="col-sm-4 form-group">
									<label>E-mail</label><input type="text" placeholder="i.ivanov@gmail.com" class="form-control" name="email">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label>Место работы</label><input type="text" placeholder="Например, ИМНС РБ по г. Минску" class="form-control" name="workplace">
								</div>
								<div class="col-sm-6 form-group">
									<label>Должность</label><input type="text" placeholder="Например, зам. начальника отдела" class="form-control" name="position">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label class="required">Семейное положение</label>
									<div class="input-group-btn">
										<select class="form-control btn btn-default" name="marital" required>
											<option>Не замужем/не женат</option>
											<option>Замужем/женат</option>
											<option>Разведен/разведена</option>
											<option>Вдовец/вдова</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6 form-group">
									<label class="required">Гражданство</label>
									<div class="input-group-btn">
										<select class="form-control btn btn-default" name="citizenship" required>
											<option>Гражданин/(-ка) Республики Беларусь</option>
											<option>Гражданин другого государства</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4 form-group">
									<label class="required">Инвалидность</label>
									<div class="input-group-btn">
										<select class="form-control btn btn-default" name="disability" required>
											<option>Нет инвалидности</option>
											<option>Инвалид 1-ой группы</option>
											<option>Инвалид 2-ой группы</option>
											<option>Инвалид 3-ей группы</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4 form-group">
									<label class="required" required>Пенсионер</label>
									<p><input name="pensioner" type="radio" value="Да">Да</p>
									<p><input name="pensioner" type="radio" value="Нет">Нет</p>
								</div>
								<div class="col-sm-4 form-group">
								<label class="required"required>Военнообязанный</label>
								<p><input name="military" type="radio" value="Да">Да</p>
								<p><input name="military" type="radio" value="Нет">Нет</p>
								</div>
							</div>
							<div class="form-group">
								<label>Ежемесячный доход (в белорусских рублях)</label><input type="text" placeholder="Например, 1000 бел. руб." class="form-control" name="income">
							</div>
							<div class="form-group">
								<label class="required">Имя пользователя</label><textarea placeholder="Введите имя пользователя на латинице" rows="1" class="form-control" name="username" required></textarea>
							</div>
							<div class="row">
								<div class="col-sm-6 form-group">
									<label class="required">Пароль</label>
									<input type="password" required placeholder="Пароль содержит минимум 5 символов" min="5" class="form-control" name="password" id="password" required>
								</div>
								<div class="col-sm-6 form-group">
									<label class="required">Повторите пароль</label>
									<input type="password" required placeholder="Введите пароль повторно" class="form-control" name="re_password" id="re_password" required onkeyup="checkPass(); return false;">
									<p id="confirmMessage" style="margin-top: 10px;"></p>
								</div>
							</div>
							<div class="form-group">
									<span class="text-muted"><em><span style="color: red; font-size: 14px">*</span> Поля, обязательные для заполнения</em></span>
							</div>
							<%
								String not_match = (String) request.getAttribute("Not_enough");
								System.out.println(not_match);
								if (not_match != null && not_match.equals("Yes")) {
							%>
							<div class="form-group">
								<p class="bg-danger text-center text-danger" style="font-size: 18px;">Пароль недостаточной длины!</p>
							</div>
							<%
								}
							%>
							<div class="form-row text-center">
							<input type="submit" class="btn btn-lg btn-info btn-danger btn-center"></input>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
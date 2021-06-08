<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@ page import="kursach.dabrabyt.bank.database.DatabaseOperations" %>
<%@ page import="kursach.dabrabyt.bank.database.JDBC_Connect" %>
<%@ page import="kursach.dabrabyt.bank.model.DepositModel" %>
<%@ page import="kursach.dabrabyt.bank.model.AccountModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Список депозитов</title>
    <link rel="shortcut icon" type="image/png" href="image/icon.png" />
    <link rel="stylesheet" type="text/css" href="css/deposit.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<%
    DatabaseOperations operations = new DatabaseOperations();
    JDBC_Connect connect = new JDBC_Connect();
    Connection conn = connect.getConnection();
    ArrayList<AccountModel> accList = operations.getAccountList(conn);
%>

<div class="row">
    <jsp:include page="header.jsp" />
</div>
<div class="container-fullwidth">
    <div class="row" style="margin-top: 35px;">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center font-weight-bold text-danger">Таблица клиентов</h3>
            <div class="table-responsive" style="margin-top: 35px">

                <table id="mytable" class="table table-bordred table-striped">

                    <thead>
                    <th>Номер аккаунта</th>
                    <th>Фамилия</th>
                    <th>Имя</th>
                    <th>Отчество</th>
                    <th>Дата рождения</th>
                    <th>Серия и номер паспорта</th>
                    <th>Дата выдачи</th>
                    <th>Идентификационный номер</th>
                    <th>Орган, выдавший документ</th>
                    <th>Место рождения</th>
                    <th>Город постоянного проживания</th>
                    <th>Настоящий адрес</th>
                    <th>Домашний телефон</th>
                    <th>Мобильный телефон</th>
                    <th>Email</th>
                    <th>Место работы</th>
                    <th>Должность</th>
                    <th>Семейное положение</th>
                    <th>Гражданство</th>
                    <th>Инвалидность</th>
                    <th>Пенсионер</th>
                    <th>Военнообязанный</th>
                    <th>Доход</th>
                    </thead>
                    <tbody>
                    <%
                        for (AccountModel acc : accList) {
                    %>
                    <tr>
                        <td><%=acc.getAccount_number()%></td>
                        <td><%=acc.getSurname()%></td>
                        <td><%=acc.getName()%></td>
                        <td><%=acc.getPatronymic()%></td>
                        <td><%=acc.getBirth()%></td>
                        <td><%=acc.getSeries()+acc.getNumber()%></td>
                        <td><%=acc.getDate()%></td>
                        <td><%=acc.getIdentification()%></td>
                        <td><%=acc.getAuthority()%></td>
                        <td><%=acc.getBirthplace()%></td>
                        <td><%=acc.getCity()%></td>
                        <td><%=acc.getAddress()%></td>
                        <td><%=acc.getHome()%></td>
                        <td><%=acc.getMobile()%></td>
                        <td><%=acc.getEmail()%></td>
                        <td><%=acc.getWorkplace()%></td>
                        <td><%=acc.getPosition()%></td>
                        <td><%=acc.getMarital()%></td>
                        <td><%=acc.getCitizenship()%></td>
                        <td><%=acc.getDisability()%></td>
                        <td><%=acc.getPensioner()%></td>
                        <td><%=acc.getMilitary()%></td>
                        <td><%=acc.getIncome()%></td>
                    </tr>
                    <%
                        }
                    %>

                    </tbody>

                </table>

            </div>

        </div>
    </div>
</div>
</body>
</html>


<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@ page import="kursach.dabrabyt.bank.database.DatabaseOperations" %>
<%@ page import="kursach.dabrabyt.bank.database.JDBC_Connect" %>
<%@ page import="kursach.dabrabyt.bank.model.DepositModel" %>
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
    ArrayList<DepositModel> depositList = operations.getDepositList(conn);
%>

<div class="row">
    <jsp:include page="header.jsp" />
</div>
<div class="container-fullwidth">
    <div class="row" style="margin-top: 35px;">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center font-weight-bold text-danger">Таблица депозитов</h3>
            <div class="table-responsive" style="margin-top: 35px">

                <table id="mytable" class="table table-bordred table-striped">

                    <thead>
                    <th>Номер аккаунта</th>
                    <th>Имя вклада</th>
                    <th>Тип депозита</th>
                    <th>Срок депозита</th>
                    <th>Процентная ставка</th>
                    <th>Валюта депозита</th>
                    <th>Сумма депозита</th>
                    </thead>
                    <tbody>
                    <%
                        for (DepositModel d : depositList) {
                    %>
                    <tr>
                        <td><%=d.getAccount_number()%></td>
                        <td><%=d.getValue()%></td>
                        <td><%=d.getDeposit_type()%></td>
                        <td><%=d.getDeposit_term()%></td>
                        <td><%=d.getDeposit_rate()%></td>
                        <td><%=d.getDeposit_currency()%></td>
                        <td><%=d.getDeposit_amount()%></td>
                        <td><p data-placement="top" data-toggle="tooltip" title="Approve">
                            <a href="DepositListApprove.jsp?account_number=<%=d.getAccount_number()%>&amount=<%=d.getDeposit_amount()%>">
                                <button class="btn btn-primary btn-sm" data-title="Approve" data-toggle="modal" data-target="#edit">
                                <span class="glyphicon glyphicon-ok"></span>
                            </button></a>
                        </p></td>
                        <td><p data-placement="top" data-toggle="tooltip" title="Delete">
                            <a href="DepositListDelete.jsp">
                            <button class="btn btn-danger btn-sm" data-title="Delete" data-toggle="modal" data-target="#delete">
                                <span class="glyphicon glyphicon-trash"></span>
                            </button>
                        </p></td>
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

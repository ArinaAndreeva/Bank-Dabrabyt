<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Отказано в совершении депозита</title>
    <link rel="shortcut icon" type="image/png" href="image/icon.png" />
    <link rel="stylesheet" type="text/css" href="css/deposit.css">
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
        <div class="alert alert-danger col-md-4 col-md-offset-4" role="alert">
            <h4 class="alert-heading text-center"><strong>Отказано в совершении депозита!</strong></h4>
        </div>
    </div>
</div>
</body>
</html>


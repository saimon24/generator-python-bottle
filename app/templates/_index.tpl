<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><%= site_name %></title>

    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.js"></script>

    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="static/css/main.css" rel="stylesheet" media="screen">

</head>
<body>

    <div class="container">
        <div class="header">
            <ul class="nav nav-pills pull-right">
                <li class="active"><a ng-href="#">Home</a></li>
                <li><a ng-href="#">About</a></li>
                <li><a ng-href="#">Contact</a></li>
            </ul>
            <h3 class="text-muted"><%= site_name %></h3>
        </div>

        <div class="jumbotron">
            <h1>'Allo, 'Allo!</h1>
            <p class="lead">
                <img src="static/img/yeoman.png" alt="I'm Yeoman"><br>
                Always a pleasure scaffolding your apps.
            </p>
            <p><a class="btn btn-lg btn-success" ng-href="#">Splendid!<span class="glyphicon glyphicon-ok"></span></a></p>
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>ToDo App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" media="all"
          href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/smoothness/jquery-ui.css"    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/0.4.15/toaster.min.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.5/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.5/angular-route.min.js"></script>
    <script src="https://code.angularjs.org/1.2.0/angular-animate.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/0.4.15/toaster.min.js"></script>
    <g:layoutHead/>
    <r:layoutResources/>
    <style>
    .well {
        padding: 15px;
        color: #434a54;
        background-color: #fff;
        border: none;
        border-radius: 4px;
        -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
        -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
        box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
        -webkit-border-radius: 4px;
        -moz-border-radius: 4px
    }

    .well blockquote {
        border-color: #ccd1d9
    }

    .well-lg {
        padding: 20px
    }

    .well-sm {
        padding: 5px
    }

    .small-heading-link{
        font-size: small!important;
        padding-top: 2%;
    }
    </style>
</head>

<body style="background-color: #d5d5d5">
<g:hiddenField name="appBaseUrl" id="appBaseUrl" value="${grailsApplication.config.grails.serverURL}"/>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#list" style="font-size: xx-large;color: #fefefe;font-family: 'Righteous', cursive;">ToDo App</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#add" style="color: #fefefe">Add New Task</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<br/><br/><br/>
<g:layoutBody/>
<r:layoutResources/>
</body>
</html>

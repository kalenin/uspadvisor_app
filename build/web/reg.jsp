<%-- 
    Document   : reg
    Created on : Nov 24, 2016, 9:48:17 AM
    Author     : kalenin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    
    <div class="container">
        <div class="row">         
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Cadastro</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="registration.jsp">
                            <fieldset>
                                <div>
                                    <label>
                                        Já cadastrado? <a href="loginform.jsp">Faça login!</a>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="name" value="" placeholder="Nome" class='form-control'autofocus/>                                    
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" value="" placeholder="Email"  value="" class='form-control' />
                                </div>
                                <div class="form-group">
                                    <input type="number" name="uname" placeholder="Número USP"  value="" class='form-control'  />
                                </div>
                                <div class="form-group">
                                    <input type="number" name="entryYear" placeholder="Ano de Ingresso"  value="" class='form-control'  />
                                </div>
                                <div class="form-group">
                                    <input type="password" name="pass" placeholder="Senha"  value="" class='form-control' />
                                </div>

                                
                                <!-- Change this to a button or input when using this as a form -->
                                <button class="btn btn-lg btn-success btn-block" type="Submit">Cadastrar</button>
                                <br>
                                <a href="index.jsp"><button class="btn btn-lg btn-info btn-block" >Página inicial</button></a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>
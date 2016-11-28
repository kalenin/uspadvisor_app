<%-- 
    Document   : alterar_email
    Created on : Nov 28, 2016, 12:25:24 AM
    Author     : kalenin
--%>


<%@ page import ="java.sql.*" %>

<%-- 
    Document   : perfil
    Created on : 24/11/2016, 23:59:34
    Author     : w
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="students" class="Students.StudentsData" scope="session"/>
<jsp:setProperty name="user" property="*"/>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>USPAdvisor</title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

        <!-- MetisMenu CSS -->
        <link rel="stylesheet" type="text/css" href="css/metisMenu.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/sb-admin-2.css">

        <!-- Morris Charts CSS -->
        <link rel="stylesheet" type="text/css" href="css/morris.css">

        <!-- Custom Fonts -->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <%
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                response.sendRedirect("loginform.jsp");
            }else {

        %>
        
        
        <div id="wrapper"> 
            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="paginicial_sim.jsp">USPAdvisor</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right">
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="perfil.jsp"><i class="fa fa-user fa-fw"></i> Perfil</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Alteração de email</h1>
                    </div>
                    <% if((session.getAttribute("message") != null) && (session.getAttribute("message") != "")) {
                        %> 
                        <div>
                            <h3><%=session.getAttribute("message") %></h3>
                        </div>
                    
                    <% 
                        session.setAttribute("message", null);
                         }%>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Alteração de email</h3>
                            </div>
                            <div class="panel-body">
                                <form action="change_email.jsp" method="POST">
                                    <fieldset>
                                        <div class="form-group">
                                            <input type="email" name="email" value="" placeholder="Digite seu novo email" class='form-control'autofocus/>                                    
                                        </div>
                                        
                                        <!-- Change this to a button or input when using this as a form -->
                                        <button class="btn btn-lg btn-success btn-block" type="Submit">Mudar email</button>
                                        
                                    </fieldset>
                                </form>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>     
                    <!-- /.panel-footer -->
                </div>
                <!-- /.panel .chat-panel -->
            </div>
            <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="js/raphael.min.js"></script>
<script src="js/morris.min.js"></script>
<script src="js/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/sb-admin-2.js"></script>

<%
    }
%>
</body>
</html>

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
        
       <jsp:include page="layout.jsp" />

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Mudança de senha</h1>
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
                                <h3>Insira sua nova senha</h3>
                            </div>
                            <div class="panel-body">
                                <form action="change_pass.jsp" method="POST">
                                    <fieldset>
                                        <div class="form-group">
                                            <input type="password" name="passOld" value="" placeholder="Digite sua senha antiga" class='form-control'autofocus/>                                    
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="passNew" value="" placeholder="Digite sua nova senha" class='form-control'autofocus/>                                    
                                        </div>
                                        
                                        <!-- Change this to a button or input when using this as a form -->
                                        <button class="btn btn-lg btn-success btn-block" type="Submit">Mudar senha</button>
                                        
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
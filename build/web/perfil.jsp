
<%@ page import ="java.sql.*" %>

<%-- 
    Document   : perfil
    Created on : 24/11/2016, 23:59:34
    Author     : w
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="students" class="Students.StudentsData" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<jsp:useBean id="dbParamData" class="dbParams.dbParamData" scope="session"/>
<jsp:setProperty name="dbParamData" property="*"/>

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
                String url = dbParamData.getUrl();
                String uid = dbParamData.getUid();
                String pwd = dbParamData.getPwd();


                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,uid, pwd);

                Object userid = session.getAttribute("userid");
                Statement st = con.createStatement();
                ResultSet rs = null;
                rs = st.executeQuery("SELECT * FROM students WHERE  num_usp='" + userid + "' LIMIT 1;");
        %>
        
        
       <jsp:include page="layout.jsp" />

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Dados do seu Perfil</h1>
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
                                <h3>Seus dados</h3>
                            </div>
                            <div class="panel-body">
                                <%
                                    while(rs.next()){
                                            
                                %>
                                <h4>Nome
                                    <small><%= rs.getString(4) %></small>
                                </h4>
                                <h4>Número USP
                                    <small><%= rs.getString(2) %></small>
                                </h4>
                                <h4>Ano de Ingresso
                                    <small><%= rs.getString(3) %></small>
                                </h4>
                                <h4>Email
                                    <small><%= rs.getString(5) %></small>
                                </h4>
                                <%}%>
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                        <div>
                            <p>
                                <a href="alterar_email.jsp"><button type="button" class="btn btn-primary">Alterar Email</button></a>
                                <a href="mudar_senha.jsp"><button type="button" class="btn btn-primary">Mudar Senha</button></a>
                            </p>
                        </div>
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
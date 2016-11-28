<%-- 
    Document   : newjsp
    Created on : 27/11/2016, 19:45:10
    Author     : Lucas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

<!especificando objeto JAVA que contém os dados do formulário em pesquisar.jsp>
<jsp:useBean id="codigoMateria" class="codigoMateria.codigoMateriaData" scope="session"/>
<jsp:setProperty name="codigoMateria" property="*"/>

<html>
    <head>
        <%
            // lendo parámetros obtido do formulário na página pesquisar.jsp
            String codigoMat = codigoMateria.getCodigoMateria();
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=codigoMat%></title>
    </head>
    <body>
        <h3> Matéria <%=codigoMat%></h3>
        
        <%
            //Configurando parametros para conectar com o servidor de banco de dados
            String url = "jdbc:mysql://localhost/avaliusp";
            //String url = "jdbc:mysql://testdbinstance.ch8wnywicnyt.sa-east-1.rds.amazonaws.com/email_contacts";
            String uid = "root";
            String pwd = "246810";

            Connection conn = null;
            ResultSet results = null;
            ResultSet ofresults = null;
            Statement statement = null;
            String id_discipline = null;

            try
            {
                // fazendo a conexão com o servidor
                // carregando driver certo para conexão
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, uid, pwd);
                statement = conn.createStatement();
                                
                // leendo o banco para mostrar conteudo em tabela HTML
                String sql1;
                sql1 = "SELECT * FROM disciplines WHERE code='" + codigoMat +"'";
                results = statement.executeQuery(sql1);
        %>
        
        
                <!código HTML para a tabela que mostra os dados do banco>
                <TABLE BORDER="1">
                    <TR>
                        <TH>Nome</TH>
                    </TR>
                <%
                //enquanto existam dados para processar
                while(results.next())
                {id_discipline = results.getString(1);
                %>
                        <!lendo cada um dos campos da tabela e mostrando na tabela HTML>
                        <TR>
                            <TD> <%= results.getString(3) %> </TD>
                        </TR>
                        <h4> Descrição: </h4>
                <h4> <%= results.getString(4) %> </h4>
                <%
                }
                %>
                </TABLE> 
                
                <br>
                <h3> Oferecimentos </h3>
                
                <%
                // lendo o banco para mostrar conteudo em tabela HTML
                String sql2;
                
                sql2 = "select * from offering_professor WHERE offering_id IN (select max(of.id) from disciplines di left join offerings of on di.id = of.discipline_id WHERE di.id = '"+ id_discipline +"' ORDER BY of.created_at DESC )";
                ofresults = statement.executeQuery(sql2);
                %>
                <!código HTML para a tabela que mostra os dados do banco>
                <TABLE BORDER="1">
                    <TR>
                        <TH>Professores</TH>
                        <TH>Oferecimento</TH>
                    </TR>
                <%
                // enquanto existam dados para processar
                while(results.next())
                {
                %>
                        <!lendo cada um dos campos da tabela e mostrando na tabela HTML>
                        <TR>
                            <TD> <%= results.getString(3) %> </TD>
                            <TD> <%= results.getString(2) %> </TD>
                        </TR>
                <%
                }
                %>
                </TABLE>
            <%
            }
            // capturando exeções em caso de erro
            catch (ClassNotFoundException e)
            {
                System.out.println("ERRO: JDBC Driver não encontrado.");
                e.printStackTrace();
            }
            catch (SQLException e)
            {
                System.out.println("ERRO: Há um erro de sintaxe no SQL.");
                e.printStackTrace();
            }
            finally
            {
                // fechando conexão com o servidor
                if (conn != null)
                {
                    try
                    {
                        conn.close();
                    }
                    catch (Exception e)
                    {
                        e.printStackTrace();
                    }
                }
            }
            %>
        <br>
        <br>
        <a href="exibe_oferecimento.jsp">Avaliar Oferecimento</a>        
        <br>
        <br>
        <a href="index.jsp">Home</a>
        <a href="sobre.jsp">Sobre</a>
    </body>
</html>
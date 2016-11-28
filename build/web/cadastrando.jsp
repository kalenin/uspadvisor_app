<%-- 
    Document   : cadastrando
    Created on : 09-nov-2016, 09:03
    Author     : Rodrigo L. Fernandez
--%>

<%@ page import="java.sql.*" %>

<!--<!especificando objeto JAVA que cont�m os dados do formul�rio em pesquisar.jsp>-->
<jsp:useBean id="codigoMateria" class="codigoMateria.codigoMateriaData" scope="session"/>
<jsp:setProperty name="codigoMateria" property="*"/>

<!--<!especificando objeto JAVA que cont�m os dados do formul�rio em cadastrar.jsp>-->
<jsp:useBean id="dadosCadastro" class="dadosCadastro.dadosCadastroData" scope="session"/>
<jsp:setProperty name="dadosCadastro" property="*"/>

<jsp:useBean id="dbParamData" class="dbParams.dbParamData" scope="session"/>
<jsp:setProperty name="dbParamData" property="*"/>

<%
    String url = dbParamData.getUrl();
    String uid = dbParamData.getUid();
    String pwd = dbParamData.getPwd();

    Connection conn = null;

    try
    {
        // fazendo a conex�o com o servidor

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, uid, pwd);

        // lendo parametros obtido do formul�rio na p�gina pesquisar.jsp
        String codigoMat = codigoMateria.getCodigoMateria();

        // lendo parametros obtido do formul�rio na p�gina cadastrar.jsp
        String codigomat = dadosCadastro.getCodigomat();
        String nomemat = dadosCadastro.getNomemat();
        String descricaomat = dadosCadastro.getDescricaomat();

        boolean proceed = false;

        // verificando que os par�metros sejam diferentes de NULL ou vazio
        if(codigomat != null && nomemat != null && descricaomat != null)
            if(codigomat.length()>0 && nomemat.length()>0 && descricaomat.length()>0)
                proceed = true;

        // preparando opera��o de INSERT e CREATE
        PreparedStatement ps1 = null;
        String sql1;

        // comandos SQL
        sql1 = "INSERT INTO disciplines VALUES (null, ?,?,?, null);";
        System.out.println(sql1);
        ps1 = conn.prepareStatement(sql1);

        if(proceed)
        {
            ps1.setString(1, codigomat);
            ps1.setString(2, nomemat);
            ps1.setString(3, descricaomat);
            ps1.executeUpdate();

            System.out.println(codigomat);
            System.out.println(nomemat);
            System.out.println(descricaomat);
        }         
    }

    // capturando exce��es em caso de erro
    catch (ClassNotFoundException e)
    {
        System.out.println("ERRO: JDBC Driver n�o encontrado.");
        e.printStackTrace();
    }
    catch (SQLException e)
    {
        System.out.println("ERRO: H� um erro de sintaxe no SQL.");
        e.printStackTrace();
    }

    finally
    {
        // fechando conex�o com o servidor
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
response.sendRedirect("exibir_oferecimentos.jsp");
%>
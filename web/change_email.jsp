<%-- 
    Document   : change_pass
    Created on : Nov 27, 2016, 11:56:28 PM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<jsp:useBean id="dbParamData" class="dbParams.dbParamData" scope="session"/>
<jsp:setProperty name="dbParamData" property="*"/>

<%
    String url = dbParamData.getUrl();
    String uid = dbParamData.getUid();
    String pwd = dbParamData.getPwd();
    Object userid = session.getAttribute("userid");    
    String emailNew = request.getParameter("email");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,uid, pwd);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select  id from students where num_usp='" + userid + "'");
    if (rs.next()) {
        
        String userId = rs.getString(1);

        Integer i = st.executeUpdate("UPDATE students SET email = '"+ emailNew +"' where id='" + userId + "'");
        if( i > 0 ){
            session.setAttribute("message", "Email alterado com sucesso");
        }else{
            session.setAttribute("message", "Houve um erro ao modificar o email");
        }
        response.sendRedirect("perfil.jsp");

        
    } else {
//        out.println("Invalid password <a href='loginform.jsp'>try again</a>");
        session.setAttribute("message", "Houve um erro: Usuário não encontrado");
        response.sendRedirect("alterar_email.jsp");

    }
%>
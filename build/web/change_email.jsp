<%-- 
    Document   : change_pass
    Created on : Nov 27, 2016, 11:56:28 PM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<%
    Object userid = session.getAttribute("userid");    
    String emailNew = request.getParameter("email");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uspadvisor",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select  id from students where num_usp='" + userid + "'");
    if (rs.next()) {
        
        String userId = rs.getString(1);

        Integer i = st.executeUpdate("UPDATE students SET email = '"+ emailNew +"' where id='" + userId + "'");
        if( i > 0 ){
            session.setAttribute("message", "Senha modificada com sucesso");
        }else{
            session.setAttribute("message", "Houve um erro ao modificar a senha");
        }
        response.sendRedirect("perfil.jsp");

        
    } else {
//        out.println("Invalid password <a href='loginform.jsp'>try again</a>");
        session.setAttribute("message", "Houve um erro: Usuário não encontrado");
        response.sendRedirect("alterar_email.jsp");

    }
%>
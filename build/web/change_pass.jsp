<%-- 
    Document   : change_pass
    Created on : Nov 27, 2016, 11:56:28 PM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<%
    Object userid = session.getAttribute("userid");    
    String passOld = request.getParameter("passOld");
    String passNew = request.getParameter("passNew");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uspadvisor",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select password_hash, id from students where num_usp='" + userid + "'");
    if (rs.next()) {
        if(rs.getString(1) != passOld){
            session.setAttribute("message", "Houve um erro: Senha antiga incorreta");
            response.sendRedirect("perfil.jsp");
        }else{
            String userId = rs.getString(2);
            rs = null;
            rs = st.executeQuery("UPDATE students SET password_hash = '"+ passNew +"' where id='" + userId + "'");
            if(rs.next()){
                session.setAttribute("message", "Senha modificada com sucesso");
            }else{
                session.setAttribute("message", "Houve um erro ao modificar a senha");
            }
            response.sendRedirect("perfil.jsp");

        }
    } else {
//        out.println("Invalid password <a href='loginform.jsp'>try again</a>");
        session.setAttribute("message", "Houve um erro: Usuário não encontrado");
        response.sendRedirect("perfil.jsp");

    }
%>

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
    String passOld = request.getParameter("passOld");
    String passNew = request.getParameter("passNew");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,uid, pwd);
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select password_hash, id from students where num_usp='" + userid + "'");
    if (rs.next()) {
        if(!rs.getString(1).equals(passOld)){
//            out.println( " " +passOld + "Invalid password <a href='loginform.jsp'>try again</a>");

            session.setAttribute("message", "Houve um erro: Senha antiga incorreta");
            response.sendRedirect("mudar_senha.jsp");
        }else{
            String userId = rs.getString(2);
            
            Integer i = st.executeUpdate("UPDATE students SET password_hash = '"+ passNew +"' where id='" + userId + "'");
            if( i > 0 ){
                session.setAttribute("message", "Senha modificada com sucesso");
            }else{
                session.setAttribute("message", "Houve um erro ao modificar a senha");
            }
            response.sendRedirect("perfil.jsp");

        }
    } else {
//        out.println("Invalid password <a href='loginform.jsp'>try again</a>");
        session.setAttribute("message", "Houve um erro: Usu�rio n�o encontrado");
        response.sendRedirect("mudar_senha.jsp");

    }
%>

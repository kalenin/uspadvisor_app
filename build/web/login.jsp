<%-- 
    Document   : login
    Created on : Nov 24, 2016, 9:51:27 AM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<jsp:useBean id="dbParamData" class="dbParams.dbParamData" scope="session"/>
<jsp:setProperty name="dbParamData" property="*"/>

<%
    String url = dbParamData.getUrl();
    String uid = dbParamData.getUid();
    String pawd = dbParamData.getPwd();

    String userid = request.getParameter("uname");         
    String pwd = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,uid, pawd);
    

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from students where num_usp='" + userid + "' and password_hash='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("perfil.jsp");
    } else {
        session.setAttribute("message", "Houve um erro. Senha inválida ou usuário não encontrado");
        response.sendRedirect("loginform.jsp");
    }
%>

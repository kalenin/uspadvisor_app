<%-- 
    Document   : registration
    Created on : Nov 24, 2016, 9:49:01 AM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<jsp:useBean id="dbParamData" class="dbParams.dbParamData" scope="session"/>
<jsp:setProperty name="dbParamData" property="*"/>

<%
    String url = dbParamData.getUrl();
    String uid = dbParamData.getUid();
    String pawd = dbParamData.getPwd();

    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("name");
    String email = request.getParameter("email");
    String entryYear = request.getParameter("entryYear");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(url,uid, pawd);
    
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into students(name, email, num_usp, password_hash, entry_year) values ('" + fname + "','" + email + "','" + user + "','" + pwd +"','" + entryYear + "');");
    if (i > 0) {
        session.setAttribute("userid", user);
        response.sendRedirect("perfil.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

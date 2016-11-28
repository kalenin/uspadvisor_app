<%-- 
    Document   : registration
    Created on : Nov 24, 2016, 9:49:01 AM
    Author     : kalenin
--%>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("name");
    String email = request.getParameter("email");
    String entryYear = request.getParameter("entryYear");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uspadvisor",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into students(name, email, num_usp, password_hash, entry_year) values ('" + fname + "','" + email + "','" + user + "','" + pwd +"','" + entryYear + "');");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>

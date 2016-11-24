<%-- 
    Document   : logout
    Created on : Nov 24, 2016, 9:52:48 AM
    Author     : kalenin
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
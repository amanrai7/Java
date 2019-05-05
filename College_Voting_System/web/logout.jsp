<%-- 
    Document   : logout
    Created on : 28 Nov, 2018, 10:24:11 PM
    Author     : amanr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%session.invalidate();
response.sendRedirect("index.jsp");%>
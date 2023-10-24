<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%-- Check if the user is authenticated --%>
<% if (session.getAttribute("authenticated") == null) {
        response.sendRedirect("../../home.jsp"); // Redirect to the login page
        } %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>
<body>

</body>
</html>
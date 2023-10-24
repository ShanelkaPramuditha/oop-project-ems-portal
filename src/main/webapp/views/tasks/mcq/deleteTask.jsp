<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Task</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/project/views/css/tasks/mcq/deleteTask.css">
</head>
<body>
    <h1>Delete Task</h1>
    
    <%@ page import="com.ems.db.DatabaseConnection" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>

    <%
        String taskId = request.getParameter("taskId");

        // Add code to delete the task from the database
        try {
            
            Connection conn = DatabaseConnection.getConnection();

            String deleteQuery = "DELETE FROM Task WHERE task_id = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(deleteQuery);
            preparedStatement.setInt(1, Integer.parseInt(taskId));

            int rowsDeleted = preparedStatement.executeUpdate();

            DatabaseConnection.closeConnection(conn);

            if (rowsDeleted > 0) {
    %>
    <p>Task deleted successfully!</p>
    <a href="viewMCQ.jsp">Back to Task List</a>
    <%
            } else {
    %>
    <p>Error deleting the task. Please try again.</p>
    <a href="viewMCQ.jsp">Back to Task List</a>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
    %>
    <p>Error deleting the task. Please try again.</p>
    <a href="viewMCQ.jsp">Back to Task List</a>
    <%
        }
    %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Task</title>
</head>
<body>
<jsp:include page="../../components/header.jsp" />
    <h1>Update Task</h1>
    
        	<%@ page import="java.sql.Connection" %>
        	<%@ page import="com.ems.db.DatabaseConnection" %>
        	<%@ page import="java.sql.PreparedStatement" %>

    <%
        String taskId = request.getParameter("taskId");
        String taskName = request.getParameter("taskName");
        int qCount = Integer.parseInt(request.getParameter("qCount"));

        // Add code to update the task details in the database
        try {
        	
            
            Connection conn = DatabaseConnection.getConnection();

            String updateQuery = "UPDATE Task SET task_name = ?, questionCount = ? WHERE task_id = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(updateQuery);
            preparedStatement.setString(1, taskName);
            preparedStatement.setInt(2, qCount);
            preparedStatement.setInt(3, Integer.parseInt(taskId));

            int rowsUpdated = preparedStatement.executeUpdate();

            DatabaseConnection.closeConnection(conn);

            if (rowsUpdated > 0) {
    %>
    <p>Task updated successfully!</p>
    <a href="viewMCQ.jsp">Back to Task List</a>
    <%
            } else {
    %>
    <p>Error updating the task. Please try again.</p>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
    %>
    <p>Error updating the task. Please try again.</p>
    <%
        }
    %>
    <jsp:include page="../../components/footer.jsp" />
</body>
</html>

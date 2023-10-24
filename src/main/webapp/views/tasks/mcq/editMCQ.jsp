<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit MCQ Task</title>
</head>
<body>
<jsp:include page="../../components/header.jsp" />
    <h1>Edit MCQ Task</h1>

    <form action="updateTask.jsp" method="post">
        <input type="hidden" name="taskId" value="<%= request.getParameter("taskId") %>">

        <%@ page import="com.ems.db.DatabaseConnection" %>
        <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.Statement" %>
        <%@ page import="java.sql.ResultSet" %>
        <%@ page import="java.sql.Timestamp" %>
        <%@ page import="java.sql.PreparedStatement" %>

        <%
            String taskId = request.getParameter("taskId");

            // Code to fetch and display the task details for editing
            try {
                Connection conn = DatabaseConnection.getConnection();

                String selectQuery = "SELECT * FROM Task WHERE task_id = ?";
                PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
                preparedStatement.setInt(1, Integer.parseInt(taskId));
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    String taskName = resultSet.getString("task_name");
                    int qCount = resultSet.getInt("questionCount");
                    Timestamp createTime = resultSet.getTimestamp("createTime");

        %>
        <label for="taskName">Task Name:</label>
        <input type="text" name="taskName" value="<%= taskName %>" required><br><br>
        <label for="qCount">Number of Questions:</label>
        <input type="number" name="qCount" value="<%= qCount %>" required><br><br>

        <input type="submit" value="Update Task">
        <%
                }
                DatabaseConnection.closeConnection(conn);
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </form>
    <jsp:include page="../../components/footer.jsp" />
</body>
</html>

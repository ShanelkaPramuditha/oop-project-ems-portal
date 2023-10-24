<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MCQ Tasks</title>
</head>
<body>
<jsp:include page="../../components/header.jsp" />
    <h1>Active MCQ Task List</h1>
    <table border="1">
        <tr>
            <th>Task Name</th>
            <th>Num of Questions</th>
            <th>Created Date</th>
        </tr>
        
        <%@ page import="com.ems.db.DatabaseConnection" %>
        <%@ page import="java.sql.Connection" %>
		<%@ page import="java.sql.Statement" %>
		<%@ page import="java.sql.ResultSet" %>
		<%@ page import="java.sql.Timestamp" %>
        <%
            
            try {
                Connection conn = DatabaseConnection.getConnection();

                String selectQuery = "SELECT * FROM Task";
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery(selectQuery);

                while (resultSet.next()) {
                    String taskName = resultSet.getString("task_name");
                    int qCount = resultSet.getInt("questionCount");
                    Timestamp createTime = resultSet.getTimestamp("createTime");
                    int taskId = resultSet.getInt("task_id");

        %>
        <tr>
            <td><%= taskName %></td>
            <td><%= qCount %></td>
            <td><%= createTime %></td>
            <td><a href="editMCQ.jsp?taskId=<%= taskId %>">Edit</a></td>
    		<td><a href="deleteTask.jsp?taskId=<%= taskId %>">Delete</a></td>
        </tr>
        <%
                }
                DatabaseConnection.closeConnection(conn);
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <br>
    <jsp:include page="../../components/footer.jsp" />
</body>
</html>

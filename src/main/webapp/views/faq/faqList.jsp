<!-- This page view can only teacher -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAQ List</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/project/views/css/faq/faqList.css">
</head>
<body>
    <h1>FAQ List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Question</th>
            <th>Answer</th>
        </tr>
        
        <%@ page import="java.sql.Connection" %>
		<%@ page import="java.sql.PreparedStatement" %>
		<%@ page import="java.sql.ResultSet" %>
		<%@ page import="com.ems.db.DatabaseConnection" %>
        <%
            // Java code to retrieve FAQs from the database
            try {
            	// database connection
        		Connection connection = DatabaseConnection.getConnection();
                String sql = "SELECT * FROM faq";
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String question = resultSet.getString("question");
                    String answer = resultSet.getString("answer");
        %>
        <tr>
            <td><%= id %></td>
            <td><%= question %></td>
            <td><%= answer %></td>
        </tr>
        <%
                }
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <h1>Update FAQ</h1>
    <form action="../../UpdateFaqServlet" method="post">
        Faq ID: <input type="number" name="id" value="<%= request.getParameter("id") %>"><br>
        Question: <input type="text" name="question" value="<%= request.getParameter("question") %>"><br>
        Answer: <textarea name="answer"><%= request.getParameter("answer") %></textarea><br>
        <input type="submit" value="Update FAQ">
    </form>
    <h1>Delete FAQ</h1>
    <p>Are you sure you want to delete this FAQ?</p>
    <form action="../../DeleteFaqServlet" method="post">
        Faq ID: <input type="number" name="id" value="<%= request.getParameter("id") %>"><br>
        <input type="submit" value="Yes, Delete">
        <a href="./faqList.jsp">No, Cancel</a>
    </form>
    <a href="./addfaq.jsp">Add More faq</a>
</body>
</html>

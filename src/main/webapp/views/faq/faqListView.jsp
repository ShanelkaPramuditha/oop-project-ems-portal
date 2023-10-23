<!-- This is for student view -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>FAQ List</title>
</head>
<body>
    <h1>Common FAQ's</h1>
    <table border="1">
        <tr>
        
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
        
                    String question = resultSet.getString("question");
                    String answer = resultSet.getString("answer");
        %>
        <tr>
         
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

</body>
</html>
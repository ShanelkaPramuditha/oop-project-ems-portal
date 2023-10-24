<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="./views/css/dash/sDashboard.css">

</head>
<body>

    <div class="sidebar">
        <h1>Student Dashboard</h1>
        <ul>
            <li><a href="#dotask">Do Task</a></li>
            <li><a href="http://localhost:8080/project/views/results/CommonResults.jsp">Results</a></li>
            <li><a href="http://localhost:8080/project/views/results/recorrections.jsp">Recorrection</a></li>
            <li><a href="http://localhost:8080/project/views/faq/faqListView.jsp">FAQ</a></li>
            <li><a href="http://localhost:8080/project/views/home.jsp">Signout</a></li>
        </ul>
    </div>
</body>
</html>

<p>Student</p>
    <h1>Welcome, ${param.username}!</h1>
    <h2>Your Details:</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Username</th>
        </tr>
        <tr>
            <td>${param.name}</td>
            <td>${param.email}</td>
            <td>${param.phone}</td>
            <td>${param.username}</td>
        </tr>
    </table>
    <form action="UpdateUserServlet" method="post">
        <input type="hidden" name="userId" value="${param.id}">
        <input type="submit" value="Update Account">
    </form>
    <form action="DeleteUserServlet" method="post">
        <input type="hidden" name="userId" value="${param.id}">
        <input type="submit" value="Delete Account">
    </form>
</body>
</html>

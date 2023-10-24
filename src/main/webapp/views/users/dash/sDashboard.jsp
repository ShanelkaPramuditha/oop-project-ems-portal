<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
</head>
<body>
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
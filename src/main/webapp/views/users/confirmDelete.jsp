<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: left;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        .custom-input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #ff4d4d;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ff1a1a;
        }

        /* Success alert styles */
        .success-alert {
            display: none;
            background-color: #4caf50;
            color: white;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<jsp:include page="./components/header.jsp" />

    <form action="../../DeleteUserServlet" method="DELETE">
        <input type="hidden" name="userId" value="${param.id}">

        <label for="name">Name:</label>
        <input type="text" class="custom-input"id="name" name="name" value="${param.name}" required disabled><br><br>

        <label for="email">Email:</label>
        <input type="text" class="custom-input" id="email" name="email" value="${param.email}" required disabled><br><br>

        <label for="phone">Phone:</label>
        <input type="text" class="custom-input" id="phone" name="phone" value="${param.phone}" required disabled><br><br>

        <label for="username">Username:</label>
        <input type="text" class="custom-input" id="username" name="username" value="${param.username}" required disabled><br><br>

        <label for="password">Password:</label>
        <input type="password" class="custom-input" id="password" name="password" value="${param.password}" required disabled><br><br>

        <input type="submit"  value="Delete Account" onclick="showSuccessAlert()">
    </form>
</body>
</html>
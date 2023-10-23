<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User Profile</title>
            <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>./views/css/users/updateUser.css">
    
<style type="text/css">
.form-container {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* CSS for labels and input fields */
        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            display: block;
            width: 90%;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* CSS for success alert */
        .success-alert {
            display: none;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: center;
            margin-top: 10px;
        }</style>
</head>
<body>
    <div class="form-container">
    <form action="../../UpdateUserServlet" method="post">
        <input type="hidden" name="userId" value="${param.id}">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${param.name}" required><br><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${param.email}" required><br><br>

        <label for= "phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${param.phone}" required><br><br>

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${param.username}" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${param.password}" required><br><br>

        <input type="submit" value="Update Account" onclick="showSuccessAlert()">
    </form>
    <div class="success-alert" id="success-alert">
        Account updated successfully!
    </div>
</div>

<script>
        function showSuccessAlert() {
            alert("Data has been successfully stored in the database!");
        }
    </script>
</body>
</html>
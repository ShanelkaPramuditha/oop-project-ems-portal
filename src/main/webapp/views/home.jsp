<%@ page import="jakarta.servlet.http.HttpServlet" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="./components/header.jsp" />
<h1>hello this is login page</h1>
<h2>Login Form</h2>
<div>
    <form action="../loginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Login">
    </form>
    <button id="register-button"> Register</button>
</div>
<div>
<h1>Testing new Function - This section will be removed later</h1>
	<a href="./tasks/addtask.jsp">Create New Task</a>
  <a href="./Image/addImage.jsp">Add the image</a>
</div>
<script>
        document.getElementById("register-button").onclick = function () {
            // Redirect to a new page
            window.location.href = "./users/studentInsert.jsp";
        };
    </script>
<jsp:include page="./components/footer.jsp" />
</body>
</html>
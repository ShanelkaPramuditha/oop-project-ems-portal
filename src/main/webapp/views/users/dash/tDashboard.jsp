<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Dashboard</title>
    <style>
   /* Add your CSS styles here */
#menu {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

#menu h1 {
    margin-top: 0;
}

#menu a {
    color: #000;
    text-decoration: none;
    padding: 10px;
}

#menu a:hover {
    background-color: #ddd;
}

#content {
    padding: 20px;
}

</style>
</head>
<body>
    <body>
    <div id="menu">
        <h1>Teacher Dashboard</h1>
        <ul>
            <li><a id="add-faq" href="http://localhost:8080/project/views/faq/addfaq.jsp">ADD FAQ</a></li>
            <li><a id="courses" href="#">COURSES</a></li>
            <li><a id="notices" href="http://localhost:8080/project/views/notices/notices.jsp">NOTICES</a></li>
            <li><a id="results" href="http://localhost:8080/project/views/results/results.jsp">RESULTS</a></li>
            <li><a id="signout" href="http://localhost:8080/project/views/home.jsp">Signout</a></li>
        </ul>
    </div>
    <div id="content">
        <!-- Your dashboard content goes here -->
    </div>
</body>

</body>
</html>

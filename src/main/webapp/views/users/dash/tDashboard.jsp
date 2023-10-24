<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/project/views/css/dash/tDashboard.css">
</head>
<body>
    <body>
    <div id="menu">
        <h1>Teacher Dashboard</h1>
        <ul>
            <li><a id="add-faq" href="http://localhost:8080/project/views/faq/addfaq.jsp">ADD FAQ</a></li>
            <li><a id="add-task" href="http://localhost:8080/project/views/tasks/mcq/addMCQ.jsp">ADD TASK</a></li>
            <li><a id="view-task" href="http://localhost:8080/project/views/tasks/mcq/viewMCQ.jsp">VIEW TASK</a></li>
            <li><a id="courses" href="#">COURSES</a></li>
            <li><a id="notices" href="http://localhost:8080/project/views/notices/notices.jsp">NOTICES</a></li>
            <li><a id="results" href="http://localhost:8080/project/views/results/results.jsp">RESULTS</a></li>
       </ul>
           <!-- <li><a id="results" href="/project/views/users/profile.jsp">PROFILE</a></li>
            
             <li><a id="signout" href="http://localhost:8080/project/views/home.jsp">SIGN OUT</a></li>  
        
        <form action="LogoutServlet" method="get">
            	<input type="submit" value="logout">
        </form>-->
    </div>
</body>
</html>

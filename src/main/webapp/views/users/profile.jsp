<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>Insert title here</title>
<style>
        /* Style for the hyperlink */
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        
        /* Hover effect for the hyperlink */
        a:hover {
            background-color: #2376b4;
        }

        /* Style for the button */
        #update {
            display: inline-block;
            padding: 10px 20px;
            background-color: #27ae60;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Hover effect for the button */
        #update:hover {
            background-color: #1d904d;
        }
        
        div {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        /* Style for the <h1> */
        h1 {
            font-size: 24px;
        }

        /* Style for the <p> elements */
        p {
            font-size: 18px;
        }

        /* Style for the buttons */
        button {
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
        }

        /* Hover effect for the buttons */
        button:hover {
            background-color: #2376b4;
        }
    </style>


</head>
<body>

<jsp:include page="../components/header.jsp" />



<!-- <h1>Login successfully</h1> -->
<!-- <p> Recieved Id : ${uId }</p>  -->
<div>
<h1>Login successfully</h1>
   <p>Received username: ${username}</p>
    <p>Received password: ${password}</p>
    <p>Received email: ${email}</p>
    <p>Received name: ${name}</p>
    <p>Received phone: ${phone}</p>
    <p>Role: ${role}</p>

    <c:url value="./views/users/updateUser.jsp" var="update">
    	<c:param name = "id" value = "${username}"/>
    </c:url>
    <%-- <a href="${update}">  		
    <button id="update">update</button>
    </a>  --%>
<a href="http://localhost:8080/project/views/users/dash/sDashboard.jsp">Dashboard</a>
<button id="update">update</button>
<button id="delete" class="btn btn-outline-danger">delete</button>

  </div>
<script>
document.getElementById("update").addEventListener("click", function() {
    // Define the values you want to send to the new JSP
    var id = "${uId}";
    var username = "${username}";
    var password = "${password}";
    var email = "${email}";
    var name = "${name}";
    var phone = "${phone}";

    // Construct the URL with parameters
    var url = "./views/users/updateUser.jsp?id=" + id + "&password=" + password + "&email=" + email + "&name=" + name + "&phone=" + phone + "&username=" + username;

    // Redirect to the new JSP
    window.location.href = url;
});

document.getElementById("delete").addEventListener("click", function() {
    // Define the values you want to send to the new JSP
    var id = "${uId}";
    var username = "${username}";
    var password = "${password}";
    var email = "${email}";
    var name = "${name}";
    var phone = "${phone}";

    // Construct the URL with parameters
    var url = "./views/users/confirmDelete.jsp?id=" + id + "&password=" + password + "&email=" + email + "&name=" + name + "&phone=" + phone + "&username=" + username;

    // Redirect to the new JSP
    window.location.href = url;
});
</script>

</body>
</html>
<%@ page import="jakarta.servlet.http.HttpServlet" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1e58a1;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: left;
            align-items: center;
            height: 100vh;
        }

        .left-side {
          width: 643px;
          height: 572px;
            flex: 1;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
        }

        .right-side {
            height: 572px;
            flex: 1;
            padding: 20px;
            background-color: #1e58a1;
            border-radius: 5px;
        }

        .form {
            text-align: left;
        }
        .form h2{
            text-align: center;
            font-size: 36px;
            font-weight: 700;
            color: #1e58a1;
        }
        .users h2{
            text-align: center;
            font-size: 36px;
            font-weight: 700;
            color: #fff;
            margin-top: 15px;
        }

        input[type="text"],
        input[type="password"] {
            width: 551.14px;
            padding: 10px;
            margin: 30px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 24px;
            border: none;
            border-bottom: 1px solid #ccc;;
        }

        .buttons {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .users{
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .users button {
            width: 251px;
            height: 69px;
            border-radius: 50px;
            padding: 10px;
            margin: 110px 40px 40px 40px;
            background-color: #fff;
            color: #1e58a1;
            border: none;
            cursor: pointer;
            font-size: 25px;
            font-weight: 600;

        }
        .signin{
          text-align: center;
          margin-top: 100px;
        }

        .button {
            width: 251px;
            height: 69px;
            border-radius: 50px;
            padding: 10px;
            margin: 3px;
            background-color: #1e58a1;
            color: #fff;
            border: none;
            cursor: pointer;
            font-size: 25px;
            font-weight: 600;

        }
        .vertical-line {
            border-left: 1px solid #ccc;
            height: 596px;
            margin: 0 100px;
        }
    </style>
</head>
<body>
<jsp:include page="./components/header.jsp" />

    <div class="container">
        <div class="left-side">
            <div class="form">
                <h2>SIGN IN</h2>
                        <form action="../loginServlet" method="post">

                    <input type="text" placeholder="Username" name="username" required>
                    <input type="password" placeholder="Password" name="password" required>
                    <div class="signin">
                      <button class="button" type="submit">SIGN IN</button>
                    </div>

                </form>
            </div>
        </div>
        <div class="vertical-line"></div>
        <div class="right-side">
            <div class="users">
                <h2>SIGN UP</h2>
                <button class="button" id="teacher">Teacher</button>
                <button class="button"id="Student">Student</button>
            </div>
        </div>
    </div>
<jsp:include page="./components/footer.jsp" />
                    <script>
        document.getElementById("Student").onclick = function () {
            // Redirect to a new page
            window.location.href = "./users/studentInsert.jsp";
        };
        document.getElementById("teacher").onclick = function () {
            // Redirect to a new page
            window.location.href = "./users/registerT.jsp";
        };
    </script>
</body>


</html>
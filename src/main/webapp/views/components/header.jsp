<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EMS Portal</title>
 
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/views/css/componets/header.css">
    <style type="text/css">
    header {
            background-color: #007bff; /* Blue background color */
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); /* Add a shadow */
        }

        /* Title styling */
        h1 {
            font-size: 36px;
        }

        /* Navigation styling */
        nav ul {
            list-style: none;
            padding: 0;
        }
         logo {
            margin-right: 20px; /* Add margin to push it to the right */
        }


        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #f7f7f7; /* Light gray color on hover */
        }</style>
</head>
<body>
    <header>
        <h1>EMS Portal</h1>
        <nav>
            <ul>
                <li><a href="http://localhost:8080/project/views/components/aboutUs.jsp">About Us</a></li> <!-- Link to About Us page -->
                <li><a href="http://localhost:8080/project/views/components/contactUs.jsp">Contact Us</a></li>
                <li><a href="http://localhost:8080/project/views/faq/faqListView.jsp">FAQ</a></li>
            </ul>
        </nav>
    </header>
</body>
</html>

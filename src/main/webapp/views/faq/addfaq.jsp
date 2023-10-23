<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add FAQ</title>
</head>
<body>
    <h1>Add FAQ</h1>
    <form action="../../AddFaqServlet" method="post">
        Question: <input type="text" name="question"><br>
        Answer: <textarea name="answer"></textarea><br>
        <input type="submit" value="Add FAQ">
        <a href="./faqList.jsp">FAQ list</a>
    </form>
</body>
</html>

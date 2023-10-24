<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    /* Form container styling */
    .form-container {
        width: 300px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        background: #f9f9f9;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    /* Input field styling */
    .form-container input[type="text"],
    .form-container input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    /* Submit button styling */
    .form-container input[type="submit"] {
        background-color: #007BFF;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
    /* Submit button hover effect */
    .form-container input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<body>

<%-- <jsp:include page="./components/header.jsp" />
 --%>
<!-- <form action="insert" method="post">


</form> -->
<div class="form-container">
    <form action="../../SignUpServlet" method="post" onsubmit="return validateForm()">
        Name <input type="text" name="name" id="name"><br>
        Email <input type="email" name="email" id="email"><br>
        Phone Number <input type="tel" name="phone" id="phone"><br>
        Select Subject/Subjects<br>
        
        <input type="checkbox" id="oop" name="subject" value="oop" />
        <label for="oop">OOP</label>
        
        <input type="checkbox" id="se" name="subject" value="se" />
        <label for="se">SE</label>
        
        <input type="checkbox" id="ossa" name="subject" value="ossa" />
        <label for="ossa">OSSA</label><br>
        
        <input type="checkbox" id="dms" name="subject" value="dms" />
        <label for="dms">DMS</label>
        
        <input type="checkbox" id="cn" name="subject" value="cn" />
        <label for="cn">CN</label><br>
        
        User Name <input type="text" name="uid" id="uid"><br>
        Password <input type="password" name="psw" id="psw"><br>
        ReType Password <input type="password" name="rpsw" id="rpsw"><br>
        <input type="hidden" id="role" name="role" value="student">
        
        <input type="submit" name="submit" value="Create Student">
    </form>
</div>

<script>
function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var uid = document.getElementById("uid").value;
    var psw = document.getElementById("psw").value;
    var rpsw = document.getElementById("rpsw").value;

    // Name, Email, Phone, and User Name are required fields
    if (name === "" || email === "" || phone === "" || uid === "") {
        alert("All required fields must be filled out.");
        return false;
    }

    // Validate Email format using a regular expression
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!emailPattern.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Phone should be a valid number (you may want to add more specific validation)
    if (isNaN(phone)) {
        alert("Please enter a valid phone number.");
        return false;
    }

    // Password and Confirm Password should match
    if (psw !== rpsw) {
        alert("Passwords do not match.");
        return false;
    }

    // Password should have a minimum length of 6 characters
    if (psw.length < 6) {
        alert("Password should be at least 6 characters long.");
        return false;
    }

    return true; // If all checks pass, the form will be submitted
}
</script>

</body>
</html>
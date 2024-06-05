<%-- 
    Document   : registerTraining
    Created on : 8 May 2024, 3:13:37 pm
    Author     : USER
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="Lab5.com.TrainingRegistration" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register for Training</title>
    <script>
        function validateForm() {
            var icNo = document.forms["registrationForm"]["icNo"].value;
            var name = document.forms["registrationForm"]["name"].value;
            var trainingType = document.forms["registrationForm"]["trainingType"].value;
            var numOfPax = document.forms["registrationForm"]["numOfPax"].value;
            var isStudent = document.forms["registrationForm"]["isStudent"].value;

            if (icNo === "" || name === "" || trainingType === "" || numOfPax === "" || isStudent === "") {
                alert("Please fill in all fields");
                return false;
            }

            if (isNaN(numOfPax)) {
                alert("Number of pax must be a valid number");
                return false;
            }

            if (numOfPax < 0) {
                alert("Number of pax cannot be negative");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <h1>Register for Training</h1>
    <form name="registrationForm" action="processTraining.jsp" onsubmit="return validateForm()" method="post">
        <label for="icNo">IC No:</label>
        <input type="text" id="icNo" name="icNo"><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="trainingType">Type of Training:</label>
        <select id="trainingType" name="trainingType">
            <option value="">Select Training</option>
            <option value="1">C++ training</option>
            <option value="2">Java for beginner</option>
            <option value="3">HTML5</option>
            <option value="4">Java EEE</option>
            <option value="5">Android Programming</option>
        </select><br><br>

        <label for="numOfPax">Number of Pax:</label>
        <input type="text" id="numOfPax" name="numOfPax"><br><br>

        <label>Student:</label>
        <input type="radio" id="isStudentYes" name="isStudent" value="1">
        <label for="isStudentYes">Yes</label>
        <input type="radio" id="isStudentNo" name="isStudent" value="0">
        <label for="isStudentNo">No</label><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>

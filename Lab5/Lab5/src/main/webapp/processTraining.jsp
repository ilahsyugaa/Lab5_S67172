<%-- 
    Document   : processTraining
    Created on : 8 May 2024, 3:20:37 pm
    Author     : USER
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="Lab5.com.TrainingRegistration" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Processing Training Registration</title>
</head>
<body>
<%
    // Retrieve form data
    String icNo = request.getParameter("icNo");
    String name = request.getParameter("name");
    String trainingType = request.getParameter("trainingType");
    int numOfPax = Integer.parseInt(request.getParameter("numOfPax"));
    boolean isStudent = request.getParameter("isStudent").equals("1");

    // Create an instance of TrainingRegistration
    TrainingRegistration registration = new TrainingRegistration();
    registration.setIcNo(icNo);
    registration.setName(name);
    registration.setTrainingType(trainingType);
    registration.setNumOfPax(numOfPax);
    registration.setStudent(isStudent);

    // Calculate total fee
    double totalFee = registration.calculateTotalFee();
%>

<h1>Training Registration Acknowledgement</h1>
<p>IC No: <%= registration.getIcNo() %></p>
<p>Name: <%= registration.getName() %></p>
<p>Type of Training: <%= registration.getTrainingTypeName() %></p>
<p>Number of Pax: <%= registration.getNumOfPax() %> <%= "person/s" %></p>
<p>Student: <%= registration.isStudent() ? "Yes" : "No" %></p>
<p>Total Fee: RM <%= String.format("%.2f", totalFee) %></p>

</body>
</html>

<%-- 
    Document   : processUser
    Created on : May 29, 2024, 3:46:45 PM
    Author     : Fad Rahmat
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information</title>
</head>
<body>
    <h2>Retrieve info using request parameters & display it using JSP expression</h2>
    
    <%
       
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String userType = request.getParameter("userType");
        String preferLanguage = request.getParameter("preferLanguage");
    %>
    
    <p><b>First Name:</b> <c:out value="${param.name}">No name</c:out></p>
    <p><b>Surname:</b> <c:out value="${param.surname}">No surname</c:out></p>
    <p><b>Password:</b> <c:out value="${param.password}">No Password</c:out></p>
    <p><b>Gender:</b> <c:out value="${param.gender}">No Gender</c:out></p>
    <p><b>Type of user:</b> <c:out value="${param.userType}">No user</c:out></p>
    <p><b>Prefer Language:</b> <c:out value="${param.preferLanguage}">No Language</c:out></p>
    
    
    
    
</body>
</html>
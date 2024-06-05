<%-- 
    Document   : jstlCore1
    Created on : May 29, 2024, 3:32:04 PM
    Author     : Fad Rahmat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSTL tag library</title>
    </head>
    <body>
        <h1>Use JSTL's features</h1>
        <c:set var="message" value="Welcome to CSM3023 - Web Programming course..!" />
        <p> <c:out value="${message}"/></p>
    </body>
</html>

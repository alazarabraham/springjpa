	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Manager</title>
</head>
<body>
<div align="center">
    <h2>Patient Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
    <h3><a href="/InsuranceManager/new">New Patient</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>Patient Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
             <th>Password</th>
            
            
        </tr>
        <c:forEach items="${listPatient}" var="patient">
        <tr>
            <td>${patient.patientid}</td>
            <td>${patient.firstname}</td>
            <td>${patient.lastname}</td>
            <td>${patient.dob}</td>
            <td>${patient.email}</td>
            <td>${patient.password}</td>
            <td>
                <a href="/InsuranceManager/edit?patient=${patient.patientid}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/InsuranceManager/delete?patient=${patient.patientid}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>


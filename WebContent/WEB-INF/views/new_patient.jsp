<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Patient</title>
</head>
<body>
    <div align="center">
        <h2>New Patient</h2>
        <form:form action="save" method="post" modelAttribute="patient">
            <table border="0" cellpadding="5">
                <tr>
                    <td>First Name: </td>
                    <td><form:input path="firstname" /></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><form:input path="lastname" /></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><form:input path="dob" /></td>
                </tr>
                <tr>
                    <td>Phone Number: </td>
                    <td><form:input path="email" /></td>
                </tr>
                <tr>
                    <td>Email Address: </td>
                    <td><form:input path="password" /></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>

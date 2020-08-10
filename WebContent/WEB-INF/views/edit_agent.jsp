<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Agent</title>
</head>
<body>
    <div align="center">
        <h2>Edit Agent</h2>
        <form:form action="save" method="post" modelAttribute="agent">
            <table border="0" cellpadding="5">
                <tr>
                    <td>Agent ID: </td>
                    <td>${agent.agent_id}
                        <form:hidden path="agent_id"/>
                    </td>
                </tr>        
                <tr>
                    <td>First Name: </td>
                    <td><form:input path="firstname" /></td>
                </tr>
                <tr>
                    <td>Middle Name: </td>
                    <td><form:input path="middlename" /></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><form:input path="lastname" /></td>
                </tr>    
                <tr>
                    <td>Password: </td>
                    <td><form:input path="password" /></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><form:input path="phone" /></td>
                </tr>
                <tr>
                    <td>Email Address: </td>
                    <td><form:input path="emailaddress" /></td>
                </tr> 
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>

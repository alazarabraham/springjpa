	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agent Manager</title>
</head>
<body>
<div align="center">
    <h2>Agent Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
    <h3><a href="/InsuranceManager/new">New Agent</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>Agent Id</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Password</th>
            <th>Phone Number</th>
            <th>Email Address</th>
            
        </tr>
        <c:forEach items="${listAgent}" var="agent">
        <tr>
            <td>${agent.agent_id}</td>
            <td>${agent.firstname}</td>
            <td>${agent.middlename}</td>
            <td>${agent.lastname}</td>
            <td>${agent.password}</td>
            <td>${agent.phone}</td>
            <td>${agent.emailaddress}</td>
            <td>
                <a href="/InsuranceManager/edit?agent_id=${agent.agent_id}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/InsuranceManager/delete?agent_id=1=${agent.agent_id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>


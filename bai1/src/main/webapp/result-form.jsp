<%@ page import="iuh.fit.se.bai1.Student" %>
<%@ page language="java" contentType="text/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result Submit</title>
</head>
<body style="background-color: #b3d9ff;">
<h1>Student Registration Details</h1>
<%
    Student student = (Student) request.getAttribute("student");
%>
<table>
    <tr>
        <td>First Name:</td>
        <td><%= student.getFirstName() %></td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td><%= student.getLastName() %></td>
    </tr>
    <tr>
        <td>Date of Birth:</td>
        <td><%= student.getDateOfBirth() %></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><%= student.getEmail() %></td>
    </tr>
    <tr>
        <td>Mobile Number:</td>
        <td><%= student.getMobileNumber() %></td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td><%= student.getGender() %></td>
    </tr>
    <tr>
        <td>Address:</td>
        <td><%= student.getAddress() %></td>
    </tr>
    <tr>
        <td>City:</td>
        <td><%= student.getCity() %></td>
    </tr>
    <tr>
        <td>Pin Code:</td>
        <td><%= student.getPinCode() %></td>
    </tr>
    <tr>
        <td>State:</td>
        <td><%= student.getState() %></td>
    </tr>
    <tr>
        <td>Country:</td>
        <td><%= student.getCountry() %></td>
    </tr>
    <tr>
        <td>Hobbies:</td>
        <td><%= student.getHobbies() %></td>
    </tr>
    <tr>
        <td>Qualifications:</td>
        <td><%= student.getQualifications() %></td>
    </tr>
    <tr>
        <td>Course:</td>
        <td><%= student.getCourse() %></td>
    </tr>
</table>
</body>
</html>

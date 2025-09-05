<%--
  Created by IntelliJ IDEA.
  User: DAILOC
  Date: 9/6/2025
  Time: 1:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="iuh.fit.se.bai2.model.User" %>
<%
    List<User> userList = Collections.emptyList();
    Object userListObj = application.getAttribute("userList");
    if (userListObj instanceof List<?>) {
        List<?> tempList = (List<?>) userListObj;
        boolean isUserList = tempList.stream().allMatch(item -> item instanceof User);
        if (isUserList) {
            userList = Collections.unmodifiableList((List<User>) tempList);
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Account List</title>
</head>
<body>
<h1>Registered Accounts</h1>
<table style="border: 1px solid black;">
    <tr>
        <th>First Name</th><th>Last Name</th><th>Email</th><th>Birthday</th><th>Gender</th>
    </tr>
    <%
        if (userList != null) {
            for (User user : userList) {
    %>
    <tr>
        <td><%= user.getFirstName() %></td>
        <td><%= user.getLastName() %></td>
        <td><%= user.getEmail() %></td>
        <td><%= user.getBirthday() %></td>
        <td><%= user.getGender() %></td>
    </tr>
    <%
            }
        }
    %>
</table>
<a href="register.jsp">Register another account</a>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: DAILOC
  Date: 9/6/2025
  Time: 1:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration Form</title>
</head>
<body>
<h1>User Registration Form</h1>
<form action="register" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" placeholder="First Name" required /><br/><br/>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" placeholder="Last Name" required /><br/><br/>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Your Email" required /><br/><br/>
    <label for="reEmail">Re-enter Email:</label>
    <input type="email" id="reEmail" name="reEmail" placeholder="Re-enter Email" required /><br/><br/>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="New Password" required /><br/><br/>
    <label>Birthday:</label><br/>
    <label for="month">Month:</label>
    <select id="month" name="month">
        <option>Month</option>
        <!-- Add month options -->
    </select>
    <label for="day">Day:</label>
    <select id="day" name="day">
        <option>Day</option>
        <!-- Add day options -->
    </select>
    <label for="year">Year:</label>
    <select id="year" name="year">
        <option>Year</option>
        <!-- Add year options -->
    </select><br/><br/>
    <label>Gender:</label><br/>
    <input type="radio" id="female" name="gender" value="Female" required />
    <label for="female">Female</label>
    <input type="radio" id="male" name="gender" value="Male" required />
    <label for="male">Male</label><br/><br/>
    <button type="submit">Sign Up</button>
</form>
</body>
</html>

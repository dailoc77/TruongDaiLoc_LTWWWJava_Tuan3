<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Student Registration Form</title>
</head>
<body style="background-color: #b3d9ff;">
<h1>Student Registration Form</h1>
<form action="registration-form" method="post">
  <table>
    <tr>
      <td><label for="txtName">First Name:</label></td>
      <td><input type="text" id="txtName" name="txtName" maxlength="30" required></td>
    </tr>
    <tr>
      <td><label for="txtLName">Last Name:</label></td>
      <td><input type="text" id="txtLName" name="txtLName" maxlength="30" required></td>
    </tr>
    <tr>
      <td><label for="day">Date of Birth:</label></td>
      <td>
        <select id="day" name="day">
          <option value="">Day</option>
          <% for (int i = 1; i <= 31; i++) { %>
            <option value="<%= i %>"><%= i %></option>
          <% } %>
        </select>
        <select id="month" name="month">
          <option value="">Month</option>
          <% String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
             for (int i = 0; i < months.length; i++) { %>
            <option value="<%= i + 1 %>"><%= months[i] %></option>
          <% } %>
        </select>
        <select id="year" name="year">
          <option value="">Year</option>
          <% for (int i = 1900; i <= 2025; i++) { %>
            <option value="<%= i %>"><%= i %></option>
          <% } %>
        </select>
      </td>
    </tr>
    <tr>
      <td><label for="txtEmail">Email:</label></td>
      <td><input type="email" id="txtEmail" name="txtEmail" required></td>
    </tr>
    <tr>
      <td><label for="txtMobileNumber">Mobile Number:</label></td>
      <td><input type="text" id="txtMobileNumber" name="txtMobileNumber" maxlength="10" required></td>
    </tr>
    <tr>
      <td><label>Gender:</label></td>
      <td>
        <input type="radio" id="genderMale" name="txtGender" value="Male" required> <label for="genderMale">Male</label>
        <input type="radio" id="genderFemale" name="txtGender" value="Female" required> <label for="genderFemale">Female</label>
      </td>
    </tr>
    <tr>
      <td><label for="txtAddress">Address:</label></td>
      <td><textarea id="txtAddress" name="txtAddress" required></textarea></td>
    </tr>
    <tr>
      <td><label for="txtCity">City:</label></td>
      <td><input type="text" id="txtCity" name="txtCity" maxlength="30" required></td>
    </tr>
    <tr>
      <td><label for="txtPinCode">Pin Code:</label></td>
      <td><input type="text" id="txtPinCode" name="txtPinCode" maxlength="6" required></td>
    </tr>
    <tr>
      <td><label for="txtState">State:</label></td>
      <td><input type="text" id="txtState" name="txtState" maxlength="30" required></td>
    </tr>
    <tr>
      <td><label for="txtCountry">Country:</label></td>
      <td>
        <select id="txtCountry" name="txtCountry">
          <option value="Vietnam">Vietnam</option>
            <option value="India">India</option>
            <option value="United States">United States</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="Canada">Canada</option>
            <option value="Australia">Australia</option>
            <option value="Germany">Germany</option>
            <option value="France">France</option>
          <!-- Add other countries -->
        </select>
      </td>
    </tr>
    <tr>
      <td><label for="txtHobbies">Hobbies:</label></td>
      <td>
        <input type="checkbox" id="hobbyDrawing" name="txtHobbies" value="Drawing"> <label for="hobbyDrawing">Drawing</label>
        <input type="checkbox" id="hobbySinging" name="txtHobbies" value="Singing"> <label for="hobbySinging">Singing</label>
        <input type="checkbox" id="hobbyDancing" name="txtHobbies" value="Dancing"> <label for="hobbyDancing">Dancing</label>
        <input type="checkbox" id="hobbySketching" name="txtHobbies" value="Sketching"> <label for="hobbySketching">Sketching</label>
        <input type="checkbox" id="hobbyOthers" name="txtHobbies" value="Others"> <label for="hobbyOthers">Others</label>
      </td>
    </tr>
    <tr>
      <td><label for="txtOtherHobbies">Other Hobbies:</label></td>
      <td><input type="text" id="txtOtherHobbies" name="txtOtherHobbies"></td>
    </tr>
    <tr>
      <td><label for="txtCourse">Course applies for:</label></td>
      <td>
        <input type="checkbox" id="courseBCA" name="txtCourse" value="BCA"> <label for="courseBCA">BCA</label>
        <input type="checkbox" id="courseBCom" name="txtCourse" value="B.Com"> <label for="courseBCom">B.Com</label>
        <input type="checkbox" id="courseBSc" name="txtCourse" value="B.Sc"> <label for="courseBSc">B.Sc</label>
        <input type="checkbox" id="courseBA" name="txtCourse" value="B.A"> <label for="courseBA">B.A</label>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
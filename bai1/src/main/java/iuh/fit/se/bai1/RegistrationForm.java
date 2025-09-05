package iuh.fit.se.bai1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Serial;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    public RegistrationForm() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get data from Form
        String txtName = request.getParameter("txtName");
        String txtLName = request.getParameter("txtLName");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String txtEmail = request.getParameter("txtEmail");
        String txtMobileNumber = request.getParameter("txtMobileNumber");
        String txtGender = request.getParameter("txtGender");
        String txtAddress = request.getParameter("txtAddress");
        String txtCity = request.getParameter("txtCity");
        String txtPinCode = request.getParameter("txtPinCode");
        String txtState = request.getParameter("txtState");
        String txtCountry = request.getParameter("txtCountry");
        String txtHobbies = request.getParameter("txtHobbies");
        String txtOtherHobbies = request.getParameter("txtOtherHobbies");
        String txtClassXBoard = request.getParameter("txtClassXBoard");
        String txtClassXPercentage = request.getParameter("txtClassXPercentage");
        String txtClassXYear = request.getParameter("txtClassXYear");
        String txtClassXIIBoard = request.getParameter("txtClassXIIBoard");
        String txtClassXIIPercentage = request.getParameter("txtClassXIIPercentage");
        String txtClassXIIYear = request.getParameter("txtClassXIIYear");
        String txtGraduationBoard = request.getParameter("txtGraduationBoard");
        String txtGraduationPercentage = request.getParameter("txtGraduationPercentage");
        String txtGraduationYear = request.getParameter("txtGraduationYear");
        String txtMastersBoard = request.getParameter("txtMastersBoard");
        String txtMastersPercentage = request.getParameter("txtMastersPercentage");
        String txtMastersYear = request.getParameter("txtMastersYear");
        String txtCourse = request.getParameter("txtCourse");

        // Combine date of birth
        String dateOfBirth = day + "-" + month + "-" + year;

        // Set data to Student
        Student student = new Student();
        student.setFirstName(txtName);
        student.setLastName(txtLName);
        student.setDateOfBirth(dateOfBirth);
        student.setEmail(txtEmail);
        student.setMobileNumber(txtMobileNumber);
        student.setGender(txtGender);
        student.setAddress(txtAddress);
        student.setCity(txtCity);
        student.setPinCode(txtPinCode);
        student.setState(txtState);
        student.setCountry(txtCountry);
        student.setHobbies(txtHobbies + ", " + txtOtherHobbies);
        student.setQualifications("Class X: " + txtClassXBoard + " " + txtClassXPercentage + " " + txtClassXYear + ", " +
                "Class XII: " + txtClassXIIBoard + " " + txtClassXIIPercentage + " " + txtClassXIIYear + ", " +
                "Graduation: " + txtGraduationBoard + " " + txtGraduationPercentage + " " + txtGraduationYear + ", " +
                "Masters: " + txtMastersBoard + " " + txtMastersPercentage + " " + txtMastersYear);
        student.setCourse(txtCourse);

        // Forward to result page
        request.setAttribute("student", student);
        request.getRequestDispatcher("result-form.jsp").forward(request, response);
    }
}

package iuh.fit.se.bai2.controller;

import iuh.fit.se.bai2.model.User;
import iuh.fit.se.bai2.util.DatabaseConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/***
 * @author DAILOC
 */

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String birthday = request.getParameter("month") + "/" + request.getParameter("day") + "/" + request.getParameter("year");
        String gender = request.getParameter("gender");

        User user = new User(firstName, lastName, email, birthday, gender);

        // Store user in the database
        try (Connection connection = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO users (first_name, last_name, email, birthday, gender) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, user.getFirstName());
                statement.setString(2, user.getLastName());
                statement.setString(3, user.getEmail());
                statement.setString(4, user.getBirthday());
                statement.setString(5, user.getGender());
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            throw new ServletException("Database error: " + e.getMessage(), e);
        }

        // Forward to account list page
        request.getRequestDispatcher("account_list.jsp").forward(request, response);
    }
}

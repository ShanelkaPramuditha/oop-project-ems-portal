package com.ems.faq;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.ems.db.DatabaseConnection;

@WebServlet(name = "UpdateFaqServlet", urlPatterns = {"/UpdateFaqServlet"})
public class UpdateFaqServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");

       

        try {
        	// database connection
    		Connection connection = DatabaseConnection.getConnection();
            String sql = "UPDATE faq SET question=?, answer=? WHERE id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, question);
            statement.setString(2, answer);
            statement.setInt(3, id);
            statement.executeUpdate();

            // Redirect back to the FAQ list page (you can change the URL)
            response.sendRedirect("./views/faq/faqList.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

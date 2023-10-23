package com.ems.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", urlPatterns = {"/logout"})
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtain the HttpSession
        HttpSession session = request.getSession(false); // Pass 'false' to prevent the creation of a new session if it doesn't exist

        if (session != null) {
            // Invalidate (delete) the session
            session.invalidate();
        }

        // Redirect to a login or another page
        response.sendRedirect("login.html");
    }
}

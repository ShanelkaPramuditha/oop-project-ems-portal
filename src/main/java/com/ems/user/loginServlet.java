package com.ems.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ems.db.DatabaseConnection;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class  loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			// Establish a database connection
            Connection conn = DatabaseConnection.getConnection();

			PreparedStatement pst = conn.prepareStatement("SELECT * FROM ems.users where username = ? and password = ?;");
			pst.setString(1, request.getParameter("username"));
			pst.setString(2, request.getParameter("password"));
			ResultSet row = pst.executeQuery();
			System.out.println(request.getParameter("username"));
			System.out.println(request.getParameter("password"));
			
			if (row.next()) {

				// this is create the another jsp file and send data to this file
				String uId = row.getString("uId");
				String username = row.getString("username");
			    String password = row.getString("password");
			    String name = row.getString("uName");
			    String email = row.getString("email");
			    int phone = row.getInt("phone");
			    String role = row.getString("role");
			    
			    request.setAttribute("uId", uId);
				request.setAttribute("username", username);
				request.setAttribute("password", password);	
				request.setAttribute("name", name);
				request.setAttribute("email", email);	
				request.setAttribute("phone", phone);
				request.setAttribute("role", role);
			    
			    // create log in session
			    HttpSession session = request.getSession();
			    session.setAttribute("uId", uId);
			    session.setAttribute("role", role);
			    session.setAttribute("name", name);
			    session.setAttribute("authenticated", true);
			    				
			    if (role.equals("student")) {
					RequestDispatcher dip = request.getRequestDispatcher("./views/users/dash/sDashboard.jsp");
					dip.forward(request, response);
			    }
			    else if (role.equals("teacher")) {
			    	RequestDispatcher dip = request.getRequestDispatcher("./views/users/dash/tDashboard.jsp");
			    	dip.forward(request, response);
			    }
			    else if (role.equals("teacher")) {
			    	RequestDispatcher dip = request.getRequestDispatcher("./views/users/dash/aDashboard.jsp");
			    	dip.forward(request, response);
			    }

			}else {
				System.out.println(Integer.parseInt(request.getParameter("password")));
			}
			
			// Close the database connection
            conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

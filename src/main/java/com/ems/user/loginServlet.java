package com.ems.user;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

//import com.mysql.jdbc.Connection;
//import com.mysql.jdbc.PreparedStatement;



@WebServlet("/login")
public class  loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		try {
<<<<<<< Updated upstream
			Class.forName("com.mysql.cj.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection(
			  "jdbc:mysql://aws.connect.psdb.cloud/ems?sslMode=VERIFY_IDENTITY",
			  "f4kgmlkcgg1nj2gu3wl3", "pscale_pw_fohYq855B06VthlpvUeOCfNR4pOdAOYJEE7TwzCUx5e");
			java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM ems.user_details where username = ? and password =?;");
=======
			// Establish a database connection
            Connection conn = DatabaseConnection.getConnection();
		java.sql.PreparedStatement pst = conn.prepareStatement("SELECT * FROM ems.user_details where username = ? and password =?;");
>>>>>>> Stashed changes
			pst.setString(1, request.getParameter("username"));
			pst.setString(2, request.getParameter("password"));
			ResultSet row = pst.executeQuery();
			if (row.next()) {
//				PrintWriter out = response.getWriter();
//				out.print("working....    ");
				
				
				// this is create the another jsp file and send data to this file
				String id = row.getString("id");
				String username = row.getString("username");
			    String password = row.getString("password");
			    String name = row.getString("Name");
			    String email = row.getString("email");
			    int phone = row.getInt("phone");
			    System.out.println(id);
				
<<<<<<< Updated upstream
				RequestDispatcher dip = request.getRequestDispatcher("registration.jsp");
=======
				RequestDispatcher dip = request.getRequestDispatcher("./views/users/profile.jsp");
				request.setAttribute("id", id);
>>>>>>> Stashed changes
				request.setAttribute("username", username);
				request.setAttribute("password", password);	
				request.setAttribute("name", name);
				request.setAttribute("email", email);	
				request.setAttribute("phone", phone);	
				dip.forward(request, response);

			}else {
				System.out.println(Integer.parseInt(request.getParameter("password")));
				
			}
			
		}catch(Exception e){
			PrintWriter out = response.getWriter();
			out.print("not working....    ");
			e.printStackTrace();
			System.out.println(e);
			
		}
	}

}

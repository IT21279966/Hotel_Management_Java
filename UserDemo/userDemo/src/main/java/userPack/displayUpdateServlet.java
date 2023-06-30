package userPack;

import java.io.IOException;


import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayUpdateServlet")
public class displayUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		
		//Validate
		try {
			
			List<display_UpdateClass> displayDetails = userDBUtil.helpvalidate(userid, name, email, inquiry);
			request.setAttribute("displayDetails", displayDetails);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		//Navigate to help_success.jsp
		RequestDispatcher disp = request.getRequestDispatcher("help_success.jsp");
		disp.forward(request, response);
	}

}

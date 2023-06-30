package userPack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/help_Sup_Insert")
public class help_Sup_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Create variables to catch data which user inserted on H&S page
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		
		boolean one;
		//Call method helpUser from userDBUtil and assign to boolean one
		one = userDBUtil.helpUser(userid, name, email, inquiry);
		
		if(one == true) {
			//Navigate to another page
			
			try {
				
				List<display_UpdateClass> displayDetails = userDBUtil.helpvalidate(userid, name, email, inquiry);
				request.setAttribute("displayDetails", displayDetails);
				
				RequestDispatcher rd1 = request.getRequestDispatcher("help_success.jsp");
				rd1.forward(request, response);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
		}else {
			RequestDispatcher rd2 = request.getRequestDispatcher("help_unsuccess.jsp");
			rd2.forward(request, response);
		}
		
		
		
	}


}

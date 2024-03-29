package userPack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//variable to save userName & Password
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			
		//Call userDBUtil Validate static method 
		List<user> userDetails = userDBUtil.validate(username, password); //get return ArrayList values from userDBUtil
		request.setAttribute("userDetails", userDetails); //pass attribute name and list object
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		//Method to Re-Direct to another page
		RequestDispatcher rd = request.getRequestDispatcher("useraccount.jsp");
		rd.forward(request, response);
		
		
		
	}

}

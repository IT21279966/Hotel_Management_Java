package userPack;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateHelp_Support_Servlet")
public class updateHelp_Support_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String inquiry = request.getParameter("inquiry");
		
		boolean one;   //true
		
		one = userDBUtil.updateHelpSup(userid, name, email, inquiry);
		
		if(one == true) {
			RequestDispatcher dis = request.getRequestDispatcher("update_success.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis = request.getRequestDispatcher("update_unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

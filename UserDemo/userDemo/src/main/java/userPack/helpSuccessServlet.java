package userPack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helpSuccessServlet")
public class helpSuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// navigate to help success
		
		/*List<display_UpdateClass> displayDetails = userDBUtil.helpvalidate(userid, name, email, inquiry);
		request.setAttribute("displayDetails", displayDetails);*/
		/*RequestDispatcher rdis = request.getRequestDispatcher("help_success.jsp");
		rdis.forward(request, response);*/
	}

}

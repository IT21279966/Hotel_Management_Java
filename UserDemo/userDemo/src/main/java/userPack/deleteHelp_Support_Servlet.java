package userPack;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteHelp_Support_Servlet")
public class deleteHelp_Support_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		boolean one;    //True
		
		//call "deleteHelpSup" method from DBUtil and assign to boolean variable
		one = userDBUtil.deleteHelpSup(userid);
		
		
		//if true navigate to help&sup.jsp
		if(one == true) {
			RequestDispatcher dis = request.getRequestDispatcher("delete_success.jsp");
			dis.forward(request, response);
		}
		
		
		//else navigate to delete_unsuccess.jsp
		else {
			
			List<display_UpdateClass> delete = userDBUtil.getDetails(userid);
			request.setAttribute("delete", delete);
			
			RequestDispatcher dis = request.getRequestDispatcher("delete_unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}

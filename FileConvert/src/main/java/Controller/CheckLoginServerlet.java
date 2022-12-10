package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BEAN.user;
import Model.BO.CheckLoginBO;

@WebServlet("/CheckLoginServerlet")
public class CheckLoginServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckLoginServerlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("txtUsername");
		String password = request.getParameter("txtPassword");
		user User = new CheckLoginBO().CheckLogin(username, password);
		if(User!=null) {
			request.getSession().setAttribute("User", User);
			response.sendRedirect("Home.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

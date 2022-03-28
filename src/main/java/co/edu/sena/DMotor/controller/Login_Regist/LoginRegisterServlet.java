package co.edu.sena.DMotor.controller.Login_Regist;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.UserDAO;

@WebServlet("/LoginRegister")
public class LoginRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO dao = new UserDAO();
     
    public LoginRegisterServlet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String action = req.getParameter("a");
		
		switch (action) {
		case "login": 
			
			req.getRequestDispatcher("/_jsp/Login_Regist/Login.jsp").forward(req, resp);
			
			break;
		case "register":
			
				List<?> bean = dao.getRol();
				req.setAttribute("Rol", bean);
				req.getRequestDispatcher("/_jsp/Login_Regist/Register.jsp").forward(req, resp);
			
			break;
		default:
			throw new IllegalArgumentException("Unexpected value: " + action);
		}
	}

}

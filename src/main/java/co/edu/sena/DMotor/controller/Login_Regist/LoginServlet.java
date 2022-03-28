package co.edu.sena.DMotor.controller.Login_Regist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.edu.sena.DMotor.model.DAO.UserDAO;
import co.edu.sena.DMotor.model.bean.UserBean;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int rol;
		int state;
		String correo = req.getParameter("correo");
		String contraseña = req.getParameter("password");
		
		UserDAO dao = new UserDAO();
		UserBean user = dao.login(correo, contraseña);
		
		HttpSession session = req.getSession();
		System.out.println(user);
		if (user != null) {
			
			rol = user.getRol();
			state = user.getEstado();
			System.out.println(state);
			int id;
			switch (rol) {
			case 1:
				id = 0;
				session.setAttribute("id", id);
				session.setAttribute("Loguser", user);
				req.getRequestDispatcher("Mechanics?a=list&id=0").forward(req, resp);
				
				break;
			case 2:
				if (state > 0) {
					id = 1;
					session.setAttribute("id", id);
					session.setAttribute("Loguser", user);
					req.getRequestDispatcher("Customers?a=list").forward(req, resp);
				}else {
					resp.sendRedirect("index.jsp");
				}
				break;

			default:
				resp.sendRedirect("index.jsp");
				break;
			}
		}else {
			resp.sendRedirect("index.jsp");
		}
		
	}

}

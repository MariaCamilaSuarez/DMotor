package co.edu.sena.DMotor.controller.Mechanics;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.UserDAO;


@WebServlet("/MechanicsList")
public class MechanicsListServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public MechanicsListServelet() {
        super();
    }
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		try {
			
			UserDAO dao = new UserDAO();
			List<?> users = dao.userList();
			req.setAttribute("Users", users);
			req.setAttribute("id", id);
			req.getRequestDispatcher("/_jsp/Header.jsp").forward(req, resp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

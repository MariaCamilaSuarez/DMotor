package co.edu.sena.DMotor.controller.Mechanics;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.UserDAO;
import co.edu.sena.DMotor.model.bean.UserBean;

@WebServlet("/DeleteMechanic")
public class DeleteMechanicServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	UserBean bean = new UserBean();
    UserDAO dao = new UserDAO();
	
    public DeleteMechanicServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		bean.setId(Integer.parseInt(req.getParameter("id")));
		
		try {
			
			dao.delete(bean.getId());
			resp.sendRedirect("Mechanics?a=list");
			
		} catch (Exception e) {
			System.out.println("Error al eliminar el formulario Mecanico");
		}
		
	}

}

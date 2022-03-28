package co.edu.sena.DMotor.controller.Mechanics;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.UserDAO;

@WebServlet("/ChangeStateMechanic")
public class ChangeStateMechanicServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	UserDAO dao = new UserDAO();
	
    public ChangeStateMechanicServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		String data = req.getParameter("data");
		
		try {
			int State;
			
			if (data.contentEquals("Inactivo")) {
				
				State= 1;
				dao.updateState(id,State);
				
			}else {
				
				State= 0;
				dao.updateState(id, State);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}

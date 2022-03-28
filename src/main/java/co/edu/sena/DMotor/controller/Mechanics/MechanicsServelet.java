package co.edu.sena.DMotor.controller.Mechanics;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Mechanics")
public class MechanicsServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MechanicsServelet() {
        super();
    }
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action= req.getParameter("a");
		int id = (int)req.getSession().getAttribute("id");
		
		switch (action) {
			case "list":
				
				req.getRequestDispatcher("MechanicsList?id="+id).forward(req, resp);
				
			break;
			
			case "delete":
				
				req.getRequestDispatcher("DeleteMechanic").forward(req, resp);
				
			break;
			case "changeState":
				
				req.getRequestDispatcher("ChangeStateMechanic").forward(req, resp);
				
			break;
		
		default:
			
			req.getRequestDispatcher("MechanicsList");
			
			break;
		}
	}
	

}

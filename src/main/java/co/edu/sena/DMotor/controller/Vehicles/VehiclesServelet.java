package co.edu.sena.DMotor.controller.Vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Vehicles")
public class VehiclesServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public VehiclesServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String action = req.getParameter("a");
		
		switch (action) {
		case "list":
			
			resp.sendRedirect("VehiclesList");
			
			break;
		case "delete":
			
			req.getRequestDispatcher("DeleteVehiculo").forward(req, resp);
			
			break;
		
		default:
			throw new IllegalArgumentException("Unexpected value: " + action);
		}
		
	}

}

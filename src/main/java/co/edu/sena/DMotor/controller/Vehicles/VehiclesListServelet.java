package co.edu.sena.DMotor.controller.Vehicles;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.VehicleDAO;


@WebServlet("/VehiclesList")
public class VehiclesListServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	VehicleDAO dao = new VehicleDAO();
	
    public VehiclesListServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			List<?> vehicles = dao.vehicleList();
			req.setAttribute("Vehicles", vehicles);
			req.getRequestDispatcher("/_jsp/Vehicles/VehiclesTable.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("Clientes no encontrados"+e.getMessage());
		}
	}

}

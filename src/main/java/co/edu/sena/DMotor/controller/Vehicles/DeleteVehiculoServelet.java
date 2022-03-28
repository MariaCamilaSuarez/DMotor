package co.edu.sena.DMotor.controller.Vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.VehicleDAO;
import co.edu.sena.DMotor.model.bean.VehicleBean;

@WebServlet("/DeleteVehiculo")
public class DeleteVehiculoServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	VehicleDAO dao = new VehicleDAO();
	VehicleBean bean = new VehicleBean();
	
    public DeleteVehiculoServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		int id =Integer.parseInt(req.getParameter("id"));
		
		try {
			
			dao.delete(id);
			resp.sendRedirect("Vehicles?a=list");
			
		} catch (Exception e) {
			System.out.println("Error al eliminar el formulario Cliente");
		}
		
	}

}

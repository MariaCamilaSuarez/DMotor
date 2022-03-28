package co.edu.sena.DMotor.controller.Vehicles;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.VehicleDAO;
import co.edu.sena.DMotor.model.bean.VehicleBean;

@WebServlet("/SubmitVehicleInfo")
public class SubmitVehicleInfoServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	VehicleDAO dao = new VehicleDAO();
    
    public SubmitVehicleInfoServelet() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int tipo = Integer.parseInt(req.getParameter("tipo"));
		int cliente = Integer.parseInt(req.getParameter("id"));
		String modelo = req.getParameter("modelo");
		String color = req.getParameter("color");
		String placa = req.getParameter("placaVehiculo");
		String marca = req.getParameter("marca");
		
		VehicleBean bean = new VehicleBean(modelo, color, marca, placa, tipo,cliente);
		dao.submitInformation(bean);
		
		resp.sendRedirect("Vehicles?a=list");
		
	}

}

package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;
import co.edu.sena.DMotor.model.DAO.VehicleDAO;
import co.edu.sena.DMotor.model.bean.CustomerBean;

@WebServlet("/SubmitCustomerInfo")
public class SubmitCustomerInfoServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CustomerDAO dao = new CustomerDAO();
	VehicleDAO VehiDao = new VehicleDAO();
	CustomerBean bean = new CustomerBean();
	
    public SubmitCustomerInfoServelet() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("nombreCliente");
		String lastName = req.getParameter("apellidoCliente");
		String documentNumber = req.getParameter("numeroDocumento");
		String email = req.getParameter("email");
		String phone = req.getParameter("telefono");
		
		CustomerBean customer = new CustomerBean( name, lastName, documentNumber, email, phone);
		
		dao.submitInformation(customer);
		
		
		
		int id= dao.getId(email);
		List<?> typeVehicle = VehiDao.typeList();
		req.setAttribute("id", id);
		req.setAttribute("Type", typeVehicle);
		
		req.getRequestDispatcher("/_jsp/Vehicles/VehicleForm.jsp").forward(req, resp);
		
	}
}

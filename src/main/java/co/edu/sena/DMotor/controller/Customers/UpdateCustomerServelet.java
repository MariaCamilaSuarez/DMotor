package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;
import co.edu.sena.DMotor.model.bean.CustomerBean;

@WebServlet("/UpdateCustomer")
public class UpdateCustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	CustomerBean bean = new CustomerBean();
	CustomerDAO dao = new CustomerDAO();
	
    public UpdateCustomerServelet() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		bean.setNombre(req.getParameter("nombreCliente"));
		bean.setApellido(req.getParameter("apellidoCliente"));
		bean.setTelefono(req.getParameter("telefono"));
		bean.setCorreo(req.getParameter("email"));
		bean.setNumeroDocumento(req.getParameter("numeroDocumento"));
		bean.setId(Integer.parseInt(req.getParameter("id")));
		
		dao.update(bean);
		
		resp.sendRedirect("Customers?a=list");
	}

}

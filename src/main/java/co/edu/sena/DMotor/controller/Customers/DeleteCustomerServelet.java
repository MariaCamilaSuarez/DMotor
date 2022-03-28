package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;
import co.edu.sena.DMotor.model.bean.CustomerBean;


@WebServlet("/DeleteCustomer")
public class DeleteCustomerServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	CustomerBean bean = new CustomerBean();
    CustomerDAO dao = new CustomerDAO();
	
    public DeleteCustomerServelet() {
        super();
    }
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		bean.setId(Integer.parseInt(req.getParameter("id")));
		
		try {
			
			dao.delete(bean.getId());
			resp.sendRedirect("Customers?a=list");
			
		} catch (Exception e) {
			System.out.println("Error al eliminar el formulario Cliente");
		}
	}

}

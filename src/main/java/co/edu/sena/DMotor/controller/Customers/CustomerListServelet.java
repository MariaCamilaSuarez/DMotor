package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;

@WebServlet("/CustomerList")
public class CustomerListServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	CustomerDAO dao = new CustomerDAO();
	
    public CustomerListServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		try {
			
			List<?> customers = dao.customerList();
			req.setAttribute("clientes", customers);
			req.setAttribute("id", id);
			req.getRequestDispatcher("/_jsp/Customers/CustomerTable.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("Clientes no encontrados"+e.getMessage());
		}
	}

}

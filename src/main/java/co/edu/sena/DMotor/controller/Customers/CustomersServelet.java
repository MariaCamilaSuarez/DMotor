package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Customers")
public class CustomersServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CustomersServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("a");
		int id = (int)req.getSession().getAttribute("id");
		
		switch (action) {
			case "list":
			
				resp.sendRedirect("CustomerList?id="+id);
				
				break;
				
			case "submitInformation":
				
				req.getRequestDispatcher("_jsp/Customers/CustomerForm.jsp").forward(req, resp);
				
				break;
			
			case "delete":
				
				req.getRequestDispatcher("DeleteCustomer").forward(req, resp);
				
				break;
				
			case "validateEmail":
				
				req.getRequestDispatcher("EmailValidation").forward(req, resp);
				
				
				break;
				
			case "validateDocument":
				
				req.getRequestDispatcher("DocumentValidation").forward(req, resp);
				
				break;
			
			case "getToUpdate":
				
				req.getRequestDispatcher("LoadUpdateData").forward(req, resp);
				
				break;

			default:
			
				resp.sendRedirect("CustomerList");
			
				break;
		}
	}

}

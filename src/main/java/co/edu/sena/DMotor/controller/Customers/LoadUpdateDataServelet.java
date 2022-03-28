package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;
import co.edu.sena.DMotor.model.bean.CustomerBean;

@WebServlet("/LoadUpdateData")
public class LoadUpdateDataServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoadUpdateDataServelet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CustomerBean bean = new CustomerBean();
		CustomerDAO dao = new CustomerDAO();
		
		bean.setId(Integer.parseInt(req.getParameter("id")));
		
		try {
			
			bean = dao.queryId(bean.getId());
			req.setAttribute("Customers", bean);
			req.getRequestDispatcher("_jsp/Customers/cambiable.jsp").forward(req, resp);
			
		} catch (Exception e) {
			System.out.println("Rol no encontrados "+e.getMessage());
		}
		
	}

}

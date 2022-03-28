package co.edu.sena.DMotor.controller.Customers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.CustomerDAO;
import co.edu.sena.DMotor.model.bean.CustomerBean;


@WebServlet("/DocumentValidation")
public class DocumentValidationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	CustomerBean bean = new CustomerBean();
	CustomerDAO dao = new CustomerDAO();

    public DocumentValidationServelet() {
        super();
        
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=iso-8859-1");
		PrintWriter out = resp.getWriter();
		try {
			System.out.println(req.getParameter("numeroDocumento"));
			int cant = dao.validateDoc(req.getParameter("numeroDocumento"));
			
			System.out.println("Documentos encontrados " + cant);
			
			if(cant!=0) {
				System.out.println("Documento registrado " + cant);
				out.println("El Documento ya se encuentra registrado");
			}

		} catch (Exception e) {
			System.out.println("Documento no encontrado " + e.getMessage());
		} 
	}

}

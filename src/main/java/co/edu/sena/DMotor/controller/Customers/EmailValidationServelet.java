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


@WebServlet("/EmailValidation")
public class EmailValidationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	CustomerBean bean = new CustomerBean();
	CustomerDAO dao = new CustomerDAO();
    
    public EmailValidationServelet() {
        super();
        
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html; charset=iso-8859-1");
		PrintWriter out = resp.getWriter();
		try {
			
			int cant = dao.validate(req.getParameter("correo"));
			
			System.out.println("Correos encontrados " + cant);
			
			if(cant!=0) {
				System.out.println("Correo registrado " + cant);
				out.println("El correo ya se encuentra registrado");
			}

		} catch (Exception e) {
			System.out.println("Correo no encontrados " + e.getMessage());
		} 
	}



}

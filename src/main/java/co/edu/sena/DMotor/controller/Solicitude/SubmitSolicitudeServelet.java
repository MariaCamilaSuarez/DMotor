package co.edu.sena.DMotor.controller.Solicitude;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.SolicitudeDAO;
import co.edu.sena.DMotor.model.bean.SolicitudeBean;



@WebServlet("/SubmitSolicitude")
public class SubmitSolicitudeServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SubmitSolicitudeServelet() {
        super();
       
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Fecha = req.getParameter("Fecha");
		int Id_Usuario = Integer.parseInt(req.getParameter("Id_Usuario"));
		int Id_Cliente = Integer.parseInt(req.getParameter("Id_Cliente"));
		int Id_Vehiculo = Integer.parseInt(req.getParameter("Id_Vehiculo"));
		String Repuesto = req.getParameter("Repuesto");
		String Servicio = req.getParameter("Servicio");
		String Parte = req.getParameter("Parte");
		String Observacion = req.getParameter("Observacion");
		int Precio = Integer.parseInt(req.getParameter("Precio"));
		
		System.out.println(Fecha);
		SolicitudeBean solicitud = new SolicitudeBean(Fecha, Id_Usuario, Id_Cliente, Id_Vehiculo, Repuesto, Servicio, Parte, Observacion, Precio);
		
		SolicitudeDAO dao = new SolicitudeDAO();
		
		int row = dao.IngresarSolicitud(solicitud);
		
		if(row !=0) {
			System.out.println("Inserción exitosa");
		}
		
		resp.sendRedirect("Solicitude?a=List");
		
	}
	}


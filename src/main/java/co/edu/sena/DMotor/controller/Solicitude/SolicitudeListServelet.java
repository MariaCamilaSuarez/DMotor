package co.edu.sena.DMotor.controller.Solicitude;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.SolicitudeDAO;

@WebServlet("/SolicitudeList")
public class SolicitudeListServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SolicitudeListServelet() {
		super();

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {

			SolicitudeDAO dao = new SolicitudeDAO();
			List<?> solicitud = dao.ListarSolicitud();
			req.setAttribute("solicitud", solicitud);
			req.getRequestDispatcher("/_jsp/Solicitude/SolicitudeTable.jsp").forward(req, resp);
			System.out.println("Solicitudes encontrados");

		} catch (Exception e) {
			System.out.println("Solicitudes no encontrados" + e.getMessage());
		}
	}


}

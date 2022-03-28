package co.edu.sena.DMotor.controller.Solicitude;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.SolicitudeDAO;
import co.edu.sena.DMotor.model.bean.SolicitudeBean;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanArrayDataSource;
import net.sf.jasperreports.engine.util.JRLoader;


@WebServlet("/Solicitude")
public class SolicitudeServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SolicitudeDAO dao =  new SolicitudeDAO();
       

    public SolicitudeServelet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
String action = req.getParameter("a");
		
		switch (action) {
		
		case "Form": 
			req.getRequestDispatcher("_jsp/Solicitude/SolicitudeForm.jsp").forward(req, resp);
			
		case "List":
			resp.sendRedirect("SolicitudeList");
			break;
			
		case "Reports":
			reportSolicitude(req, resp);
		
		break;
			
		case "edit":
			req.setAttribute("Id_Solicitud",req.getParameter("Id_Solicitud"));
			req.getRequestDispatcher("UpdateSolicitud.jsp").forward(req, resp);
			break;
			
		default: 
			resp.sendRedirect("index.jsp");
			break;
		}
		
	}


	@SuppressWarnings("unchecked")
	private void reportSolicitude(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ServletOutputStream out = resp.getOutputStream();
		
		try {
			
			java.io.InputStream logo = this.getServletConfig()
					.getServletContext()
					.getResourceAsStream("_reports/_img/logo.png");
			java.io.InputStream report = this.getServletConfig()
					.getServletContext()
					.getResourceAsStream("_reports/Solicitud.jasper");
			
			if(logo!=null && report!=null) {
				List<SolicitudeBean> reportSolicitude = new ArrayList<>();
				reportSolicitude = dao.ListarSolicitud();
				
				JasperReport reportS=(JasperReport) JRLoader.loadObject(report);
				JRBeanArrayDataSource ds = new JRBeanArrayDataSource(reportSolicitude.toArray());
				
				Map<String,Object> parameters = new HashMap<String, Object>();
				parameters.put("ds", ds);
				parameters.put("logo", logo);
				
				resp.setContentType("application/pdf");
				resp.addHeader("Content-dispotition", "inline;filaname=Cotizacion.pdf");
				
				JasperPrint jasperPrint = JasperFillManager.fillReport(reportS, parameters, ds);
				JasperExportManager.exportReportToPdfStream(jasperPrint, out);
				out.flush();
				out.close();
			}	else {
				resp.setContentType("tex/plain");
				out.println("No se pudo generar el reporte");
				out.println("Esto puede deberse a que la lista de datos no fue recibida o el archivo plantilla esta fallando");
				out.println("Conecte al soporte");
			}
		} catch (Exception e) {
			
			resp.setContentType("tex/plain");
			out.println("Ocurrio un error al intentar generar el reporte: " + e.getMessage());
			e.printStackTrace();
		}
		
		
	}
	

	
	}



package co.edu.sena.DMotor.controller.Login_Regist;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.sena.DMotor.model.DAO.UserDAO;
import co.edu.sena.DMotor.model.bean.UserBean;
import co.edu.sena.DMotor.utiles.configEmail;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private String host;
	private String port;
	private String sender;
	private String password;

	public void init() {
		ServletContext context=getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		sender = context.getInitParameter("sender");
		password = context.getInitParameter("password");
	}
	
    public RegisterServlet() {
        super();
    }
    
    
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		int rol = Integer.parseInt(req.getParameter("rol"));
		String correo = req.getParameter("correo");
		String contraseña = req.getParameter("password");
		
		UserBean user = new UserBean(nombre, apellido, correo, contraseña, rol, 1);
		
		UserDAO dao = new UserDAO();
		dao.register(user);
		
		String usuario=user.getApellido();
		String addressee= correo;
		String matter="BIENVENIDO A DMOTOR";
		String body="<h1> Gracias por registrarse en DMotor ahora formaras parte de nuestra comunidad </h1>"+usuario
	    		+ " <h4> Para iniciar sesión </h4>"
	    		+" <a href='http://localhost:8080/DMotor/index.jsp'>Haga click aquí</a>";
		
		try {
			configEmail.eviarCorreo(host,port,sender,password,addressee,matter,body);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		resp.sendRedirect("index.jsp");
		
	}

}

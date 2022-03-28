package co.edu.sena.DMotor.model.bean;

public class SolicitudeBean {
	
	private int Id_Solicitud;
	private String Fecha;
	private int Id_Usuario;
	private int Id_Cliente;
	private int Id_Vehiculo;
	private String Repuesto;
	private String Servicio;
	private String Parte;
	private String Observacion;
	private int Precio;
	
	public SolicitudeBean(String Fecha, int Id_Usuario, int Id_Cliente, int Id_Vehiculo,
			String Repuesto, String Servicio, String Parte, String Observacion, int Precio) {
		super();
		
		this.Fecha = Fecha;
		this.Id_Usuario = Id_Usuario;
		this.Id_Cliente = Id_Cliente;
		this.Id_Vehiculo = Id_Vehiculo;
		this.Repuesto = Repuesto;
		this.Servicio = Servicio;
		this.Parte = Parte;
		this.Observacion = Observacion;
		this.Precio = Precio;
	}
	
	
	public int getId_Solicitud() {
		return Id_Solicitud;
	}
	public void setId_Solicitud(int id_Solicitud) {
		Id_Solicitud = id_Solicitud;
	}
	public String getFecha() {
		return Fecha;
	}
	public void setFecha(String fecha) {
		Fecha = fecha;
	}
	public int getId_Usuario() {
		return Id_Usuario;
	}
	public void setId_Usuario(int id_Usuario) {
		Id_Usuario = id_Usuario;
	}
	public int getId_Cliente() {
		return Id_Cliente;
	}
	public void setId_Cliente(int id_Cliente) {
		Id_Cliente = id_Cliente;
	}
	public int getId_Vehiculo() {
		return Id_Vehiculo;
	}
	public void setId_Vehiculo(int id_Vehiculo) {
		Id_Vehiculo = id_Vehiculo;
	}
	public String getRepuesto() {
		return Repuesto;
	}
	public void setRepuesto(String repuesto) {
		Repuesto = repuesto;
	}
	public String getServicio() {
		return Servicio;
	}
	public void setServicio(String servicio) {
		Servicio = servicio;
	}
	public String getParte() {
		return Parte;
	}
	public void setParte(String parte) {
		Parte = parte;
	}
	public String getObservacion() {
		return Observacion;
	}
	public void setObservacion(String observacion) {
		Observacion = observacion;
	}
	public int getPrecio() {
		return Precio;
	}
	public void setPrecio(int precio) {
		Precio = precio;
	}
	
	public SolicitudeBean() {
		
	}

}

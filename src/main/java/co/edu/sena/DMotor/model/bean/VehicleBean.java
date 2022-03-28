package co.edu.sena.DMotor.model.bean;

public class VehicleBean {
	
	private String modelo;
	private String color;
	private String marca;
	private String placa;
	private String nameTipo;
	private String nameCliente;
	private int id;
	private int tipo;
	private int cliente;
	
	public VehicleBean() {
		super();
	}

	public VehicleBean(String modelo, String color, String marca, String placa, int tipo, int cliente) {
		super();
		this.modelo = modelo;
		this.color = color;
		this.marca = marca;
		this.placa = placa;
		this.tipo = tipo;
		this.cliente = cliente;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public int getCliente() {
		return cliente;
	}

	public void setCliente(int cliente) {
		this.cliente = cliente;
	}
	
	public String getNameTipo() {
		return nameTipo;
	}

	public void setNameTipo(String nameTipo) {
		this.nameTipo = nameTipo;
	}

	public String getNameCliente() {
		return nameCliente;
	}

	public void setNameCliente(String nameCliente) {
		this.nameCliente = nameCliente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}

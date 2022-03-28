package co.edu.sena.DMotor.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.edu.sena.DMotor.model.bean.VehicleBean;
import co.edu.sena.DMotor.utiles.connectionDB;

public class VehicleDAO {

	Connection conn;
	PreparedStatement statement;
	ResultSet set;
	String sql;
	int row;
	
	public int submitInformation(VehicleBean vehicle ){
		
		row = 0;
		try {
			sql = "INSERT INTO vehiculo(Modelo,Color,Id_Tipo,Marca,Placa,Id_ClienteFK) VALUES(?,?,?,?,?,?)";
			
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			statement.setString(1, vehicle.getModelo());
			statement.setString(2, vehicle.getColor());
			statement.setInt(3, vehicle.getTipo());
			statement.setString(4, vehicle.getMarca());
			statement.setString(5, vehicle.getPlaca());
			statement.setInt(6, vehicle.getCliente() );
			
			row = statement.executeUpdate();
			statement.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return row;
	}
	
	public List<?> vehicleList() {
		
		List<VehicleBean> vehicle = new ArrayList<>();
		sql = "SELECT ALL Id_Vehiculo, Color, Marca, Modelo, Placa, Nombre_Tipo, Nombre, Apellido FROM vehiculo JOIN tipo ON "
				+ "tipo.Id_Tipo = vehiculo.Id_Tipo JOIN cliente ON  cliente.Id = vehiculo.Id_ClienteFK;";
		try {
			conn = connectionDB.getConnection(); 
			statement = conn.prepareStatement(sql); 
			set = statement.executeQuery();
			
			while(set.next()) {
				VehicleBean bean = new VehicleBean();
				String nombre = set.getString("Nombre");
				String apellido = set.getString("Apellido");
				bean.setNameCliente(nombre.concat(apellido));
				bean.setNameTipo(set.getString("Nombre_Tipo"));
				bean.setColor(set.getString("Color"));
				bean.setMarca(set.getString("Marca"));
				bean.setModelo(set.getString("Modelo"));
				bean.setPlaca(set.getString("Placa"));
				bean.setId(set.getInt("Id_Vehiculo"));
				
				vehicle.add(bean);
			}
			
			statement.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vehicle;
	}
	
	public List<?> typeList(){
		
		List<VehicleBean> tipo = new ArrayList<>();
		sql = "SELECT * FROM tipo";
		
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			set = statement.executeQuery();
			
			while(set.next()) {
				VehicleBean bean = new VehicleBean();
				bean.setNameTipo(set.getString("Nombre_Tipo"));
				bean.setTipo(set.getInt("Id_Tipo"));
				
				
				tipo.add(bean);
			}
			
			statement.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return tipo;
		
	}
	
	public int delete(int id) {
		
		sql = "DELETE FROM vehiculo WHERE Id_Vehiculo =" + id;
		
		try {
			
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			
			statement.executeUpdate();
			statement.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return row;
		
	}
	
}

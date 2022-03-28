package co.edu.sena.DMotor.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.edu.sena.DMotor.model.bean.CustomerBean;
import co.edu.sena.DMotor.utiles.connectionDB;

public class CustomerDAO {

	Connection conn;
	PreparedStatement statement;
	ResultSet set;
	String sql;
	int row;
	
	public int submitInformation(CustomerBean customer) {
		
		row = 0;
		try {
			conn = connectionDB.getConnection();
			sql = "INSERT INTO cliente (Nombre, Apellido, Numero_Documento, Correo, Telefono) VALUES(?,?,?,?,?);";
			statement = conn.prepareStatement(sql);
			statement.setString(1, customer.getNombre());
			statement.setString(2, customer.getApellido());
			statement.setString(3, customer.getNumeroDocumento());
			statement.setString(4, customer.getCorreo());
			statement.setString(5, customer.getTelefono());
			
			row = statement.executeUpdate();
			statement.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return row;
	}

	@SuppressWarnings("rawtypes")
	public List customerList() {
		
		List<CustomerBean> customer = new ArrayList<>();
		sql="SELECT * FROM cliente";
		try {
			conn = connectionDB.getConnection(); 
			statement = conn.prepareStatement(sql); 
			set = statement.executeQuery();
			
			while(set.next()) {
				CustomerBean bean = new CustomerBean();
				bean.setId(set.getInt("Id"));
				bean.setNombre(set.getString("Nombre"));
				bean.setApellido(set.getString("Apellido"));
				bean.setNumeroDocumento(set.getString("Numero_Documento"));
				bean.setCorreo(set.getString("Correo"));
				bean.setTelefono(set.getString("Telefono"));
				
				customer.add(bean);
			}
			
			statement.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return customer;
	}

	public CustomerBean queryId(int id) throws SQLException {
	
		CustomerBean bean = new CustomerBean();
		sql = "SELECT * FROM cliente WHERE Id=" + id;
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql); 
			set = statement.executeQuery();
			
			while(set.next()) {
				
				bean.setId(set.getInt("Id"));
				bean.setNombre(set.getString("Nombre"));
				bean.setApellido(set.getString("Apellido"));
				bean.setNumeroDocumento(set.getString("Numero_Documento"));
				bean.setCorreo(set.getString("Correo"));
				bean.setTelefono(set.getString("Telefono"));
			}
			
			statement.close();
			
		}catch(Exception e) {
			System.out.println("Consulta no exitosa de editar" +e.getMessage());
		}
		finally {
			conn.close();
		}
		
		return bean;
	}

	public int update(CustomerBean bean) {
		
		int row = 0;
		
		try {
			 sql = "UPDATE cliente SET Nombre = ?, Apellido = ?, Numero_Documento = ?, Correo = ?, Telefono = ? WHERE id = ?";
			 conn = connectionDB.getConnection();
			 statement = conn.prepareStatement(sql);
			 statement.setString(1, bean.getNombre());
			 statement.setString(2, bean.getApellido());
			 statement.setString(3, bean.getNumeroDocumento());
			 statement.setString(4, bean.getCorreo());
			 statement.setString(5, bean.getTelefono());
			 statement.setInt(6, bean.getId());
			 
			 row = statement.executeUpdate();
			 
			 statement.close();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return row;
	}

	public int delete(int id) throws SQLException{
		
		sql="DELETE FROM cliente WHERE id="+id;
		
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			System.out.println("Error al eliminar el cliente" +e.getMessage());
		}
		finally {
			conn.close();
		}
		
		return row;
	}

	@SuppressWarnings("unused")
	public int validate(String email) throws SQLException {
		
		row = 0;
		CustomerBean bean = new CustomerBean();
		sql="SELECT COUNT(*) AS Cantidad FROM cliente WHERE Correo=?";
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			statement.setString(1, email);
			set = statement.executeQuery();
			while(set.next()) {
				
				row = set.getInt("Cantidad");
			}
			statement.close();
			
		}catch(Exception e) {
			System.out.println("Error en la consulta "+e.getMessage());	
		}finally {	
			conn.close();	
		}
		
		return row;
	}

	@SuppressWarnings("unused")
	public int validateDoc(String documentNumber) throws SQLException {
		
		row = 0;
		CustomerBean bean = new CustomerBean();
		sql="SELECT COUNT(*) AS Cantidad  FROM cliente WHERE Numero_Documento=?";
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			statement.setString(1, documentNumber);
			set = statement.executeQuery();
			while(set.next()) {
				
				row = set.getInt("Cantidad");
			}
			statement.close();
			
		}catch(Exception e) {	
			System.out.println("Error en la consulta de documentos "+e.getMessage());
		}finally {
			conn.close();
		}
		
		return row;
	}
	
	public int getId(String email) {
		
		int id = 0;
		sql = "SELECT Id FROM cliente WHERE Correo = ?";
		
		try {
			
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(sql);
			statement.setString(1, email);
			set = statement.executeQuery();
			
			while (set.next()) {
				
				CustomerBean bean = new CustomerBean();			
				bean.setId(set.getInt("Id"));
				id = bean.getId();
			}
			
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return id;
	}
	
}

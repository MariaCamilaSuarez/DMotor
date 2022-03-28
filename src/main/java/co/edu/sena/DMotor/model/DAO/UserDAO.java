package co.edu.sena.DMotor.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.edu.sena.DMotor.model.bean.UserBean;
import co.edu.sena.DMotor.utiles.connectionDB;

public class UserDAO {

	Connection conn;
	PreparedStatement statement;
	ResultSet set;
	String query;
	int row;

	public UserBean login(String correo, String contraseña){
		UserBean user = null;
		query = "SELECT nombreUsuario, apellidoUsuario, Id_Rol, Id_Estado FROM usuario WHERE correoUsuario = ? AND claveUsuario = ? ";
		
		try {
			
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			
			statement.setString(1, correo);
			statement.setString(2, contraseña);
			set = statement.executeQuery();
			
			while (set.next()) {
				user = new UserBean();
				user.setNombre(set.getString("nombreUsuario"));
				user.setApellido(set.getString("apellidoUsuario"));
				user.setRol(set.getInt("Id_Rol"));
				user.setEstado(set.getInt("Id_Estado"));
				
			}
			
			statement.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
		
	}
	
	public List<?> userList() throws SQLException{
		
		List<UserBean> users= new ArrayList<>();
		query = "SELECT Id_Usuario,nombreUsuario,apellidoUsuario,correoUsuario,Id_Estado FROM usuario WHERE Id_Rol = 2 ";
		try {
			
			conn= connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			set = statement.executeQuery();
			
			while (set.next()) {
				UserBean user = new UserBean();
				user.setId(set.getInt("Id_Usuario"));
				user.setNombre(set.getString("nombreUsuario"));
				user.setApellido(set.getString("apellidoUsuario"));
				user.setCorreo(set.getString("correoUsuario"));
				user.setEstado(set.getInt("Id_Estado"));
				
				users.add(user);
			}
			
			statement.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return users;
	}
	
	public int register(UserBean user) {
		row = 0;
		query = "insert into usuario (nombreUsuario,apellidoUsuario,correoUsuario,claveUsuario, Id_Rol, Id_Estado) values (?,?,?,?,?,?)";
		
		try {
			
			conn =  connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			
			statement.setString(1, user.getNombre());
			statement.setString(2, user.getApellido());
			statement.setString(3, user.getCorreo());
			statement.setString(4, user.getContraseña());
			statement.setInt(5, user.getRol());
			statement.setInt(6, user.getEstado());
			
			row = statement.executeUpdate();
			statement.close();
			
		} 
		catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		
		return row;
	}
	
	public int delete(int id) throws SQLException{
		
		query="DELETE FROM usuario WHERE Id_Usuario="+id;
		
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			
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
	
	public int updateState(int id, int State) throws SQLException {
		
		query="UPDATE usuario SET Id_Estado = ? WHERE Id_Usuario = ?";
		
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			
			statement.setInt(1, State);
			statement.setInt(2, id);
			
			row = statement.executeUpdate();
			statement.close();
			
		} catch (SQLException e) {
			System.out.println("Error al cambiar estado del cliente" +e.getMessage());
		}
		finally {
			conn.close();
		}
		
		return row;
	}
	
	public List<?> getRol() {
		
		List<UserBean> users = new ArrayList<>();
		query="SELECT * FROM rol";
		
		try {
			conn = connectionDB.getConnection();
			statement = conn.prepareStatement(query);
			set = statement.executeQuery();
			
			while (set.next()) {
				UserBean user = new UserBean();
				user.setRol(set.getInt("Id_Rol"));
				user.setNomRol(set.getString("Nombre_Rol"));
				
				users.add(user);				
			}
			
			statement.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
		
	}
}

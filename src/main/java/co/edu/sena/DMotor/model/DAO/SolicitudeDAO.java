package co.edu.sena.DMotor.model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import co.edu.sena.DMotor.model.bean.SolicitudeBean;
import co.edu.sena.DMotor.utiles.connectionDB;

public class SolicitudeDAO {
	
	Connection con;
	PreparedStatement statement;
	ResultSet set;
	String sql;
	int row;

	public int IngresarSolicitud(SolicitudeBean solicitud) {
		int filaAfectada = 0;

		try {
			con = connectionDB.getConnection();
			sql = "INSERT INTO solicitud ( Fecha, Id_Usuario, Id_Cliente, "
					+ "Id_Vehiculo, Repuesto, Servicio, Parte, Observacion, Precio) VALUES(?,?,?,?,?,?,?,?,?);";

			statement = con.prepareStatement(sql);
			statement.setString(1, solicitud.getFecha());
			statement.setInt(2, solicitud.getId_Usuario());
			statement.setInt(3, solicitud.getId_Cliente());
			statement.setInt(4, solicitud.getId_Vehiculo());
			statement.setString(5, solicitud.getRepuesto());
			statement.setString(6, solicitud.getServicio());
			statement.setString(7, solicitud.getParte());
			statement.setString(8, solicitud.getObservacion());
			statement.setInt(9, solicitud.getPrecio());
			filaAfectada = statement.executeUpdate();
			System.out.println(filaAfectada);
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return filaAfectada;

	}

	@SuppressWarnings("rawtypes")
	public List ListarSolicitud() {

		List<SolicitudeBean> solicitud = new ArrayList<>();
		sql = "SELECT ID_SOlicitud, Fecha, Id_Usuario, Id_CLiente, Id_Vehiculo, Repuesto, Servicio, Parte, Observacion, Precio FROM solicitud";
		try {
			con = connectionDB.getConnection();
			statement = con.prepareStatement(sql);
			set = statement.executeQuery();

			while (set.next()) {
				SolicitudeBean r = new SolicitudeBean();
				r.setId_Solicitud(set.getInt("Id_Solicitud"));
				r.setFecha(set.getString("Fecha"));
				r.setId_Usuario(set.getInt("Id_Usuario"));
				r.setId_Cliente(set.getInt("Id_Cliente"));
				r.setId_Vehiculo(set.getInt("Id_Vehiculo"));
				r.setRepuesto(set.getString("Repuesto"));
				r.setServicio(set.getString("Servicio"));
				r.setParte(set.getString("Parte"));
				r.setObservacion(set.getString("Observacion"));
				r.setPrecio(set.getInt("Precio"));

				solicitud.add(r);
				System.out.println("Solicitud exitosa");

			}

			statement.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return solicitud;
	}
	
	public SolicitudeBean consultaId(int Id_Solicitud) throws SQLException {
		SolicitudeBean b = new SolicitudeBean();
		sql = "SELECT * FROM solicitud WHERE Id=" + Id_Solicitud;
		try {
			con = connectionDB.getConnection(); 
			statement = con.prepareStatement(sql); 
			set = statement.executeQuery();
			
			while(set.next()) {
				
				b.setFecha(set.getString("Fecha"));
				b.setId_Usuario(set.getInt("Id_Usuario"));
				b.setId_Cliente(set.getInt("Id_Cliente"));
				b.setId_Vehiculo(set.getInt("Id_Vehiculo"));
				b.setRepuesto(set.getString("Repuesto"));
				b.setServicio(set.getString("Servicio"));
				b.setParte(set.getString("Parte"));
				b.setObservacion(set.getString("Observacion"));
				b.setPrecio(set.getInt("Precio"));
				
				System.out.println("Consulta exitosa de editar");
				
			}
			
			statement.close();
			
			
		}catch(Exception e) {
			System.out.println("Consulta no exitosa de editar" +e.getMessage());
		}
		finally {
			con.close();
		}
		return b;
	}

	public int Reporte(SolicitudeBean bean) {

		int row = 0;

		try {
			sql = "Select servicio Fecha = ?, Id_Usuario = ?, Id_cliente = ?, Id_Vehiculo = ?, Repuesto = ?, Servicio = ?,"
					+ "Parte = ?, Observacion = ?, Precio = ? WHERE ID_Solicitud = ?";
			con = connectionDB.getConnection();
			statement = con.prepareStatement(sql);
			statement.setString(1, bean.getFecha());
			statement.setInt(2, bean.getId_Usuario());
			statement.setInt(3, bean.getId_Cliente());
			statement.setInt(4, bean.getId_Vehiculo());
			statement.setString(6, bean.getRepuesto());
			statement.setString(7, bean.getServicio());
			statement.setString(8, bean.getParte());
			statement.setString(9, bean.getObservacion());
			statement.setInt(10, bean.getPrecio());
			statement.setInt(11, bean.getId_Solicitud());

			row = statement.executeUpdate();

			statement.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return row;
	}

}

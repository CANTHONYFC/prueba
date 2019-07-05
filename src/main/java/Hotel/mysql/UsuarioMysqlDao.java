/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.json.JSONArray;
import org.json.JSONObject;
import Hotel.dao.UsuarioDAO;
import Hotel.mysql.MySqlDAOFactory;
import Hotel.utilities.DAOHelper;
import Hotel.utilities.OsUtils;
import io.github.cdimascio.dotenv.Dotenv;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author sistem16user
 */
public class UsuarioMysqlDao implements UsuarioDAO {

	@Override
	public JSONObject ObtenerUsuario(JSONObject obj) {
		JSONObject response = new JSONObject();
		boolean status = true;
		JSONArray lista;
		try (Connection cn = MySqlDAOFactory.obtenerConexion("Tablet")) {
			String query = "{call PRO_VALIDAR_USUARIO(?,?)}";

			JSONArray params = new JSONArray()
				.put(obj.get("dni"))
				.put(obj.get("password"));

			lista = DAOHelper.queryProcedure(cn, query, true, params);
			response.put("data", lista);
		} catch (Exception e) {
			e.printStackTrace();
			status = false;
			response.put("message", "Error en el proceso");

		}

		response.put("status", status);
		return response;
	}

	
	
	
	@Override
	public JSONObject ObtenerEstadoContraseña(JSONObject obj) {
		JSONObject response = new JSONObject();
		boolean status = true;
		JSONArray lista;
		try (Connection cn = MySqlDAOFactory.obtenerConexion("Tablet")) {
			String query = "{call PRO_ESTADO_CONTRASEÑA(?)}";

			JSONArray params = new JSONArray()
				.put(obj.get("dni"));
			lista = DAOHelper.queryProcedure(cn, query, true, params);
			response.put("estadoC", lista);
		} catch (Exception e) {
			e.printStackTrace();
			status = false;
			response.put("message", "Error en el proceso");

		}

		response.put("status", status);
		return response;
	}
	
	
	

	@Override
	public JSONObject actualizarPassword(JSONObject obj) {
		JSONObject response = new JSONObject();
		boolean status = true;
		JSONArray lista;
		try (Connection cn = MySqlDAOFactory.obtenerConexion("Tablet")) {
			String query = "{call PRO_ACTUALIZAR_PASSWD(?,?)}";
			JSONArray params = new JSONArray()
					.put(obj.get("password"))
				.put(obj.get("dni"));
			lista = DAOHelper.queryProcedure(cn, query, true, params);
			response.put("estadoC", lista);
		} catch (Exception e) {
			e.printStackTrace();
			status = false;
			response.put("message", "Error en el proceso");

		}

		response.put("status", status);
		return response;
	}


	@Override
	public JSONObject Cargarcuartos(JSONObject json) {
		 JSONObject response = new JSONObject();
        boolean status = true;
        JSONArray lista;
        try (Connection cn = MySqlDAOFactory.obtenerConexion("Tablet")) {
            String query = "{call PRO_LISTAR_CUARTOS()}"; 
            JSONArray params = new JSONArray();
            lista = DAOHelper.queryProcedure(cn, query, true, params);
            response.put("data", lista);

            response.put("message", "Se listaron correctamente");
        } catch (Exception e) {
            e.printStackTrace();
            status = false;
            response.put("message", "Error en el proceso");

        }

        response.put("status", status);
        return response;
	}

	@Override
	public JSONObject ObtenerInfoH(JSONObject json) {
	 JSONObject response = new JSONObject();
        boolean status = true;
        JSONArray lista;
        try (Connection cn = MySqlDAOFactory.obtenerConexion("Tablet")) {
            String query = "{call PRO_LISTAR_CUARTOS()}"; 
            JSONArray params = new JSONArray();
            lista = DAOHelper.queryProcedure(cn, query, true, params);
            response.put("data", lista);

            response.put("message", "Se listaron correctamente");
        } catch (Exception e) {
            e.printStackTrace();
            status = false;
            response.put("message", "Error en el proceso");

        }

        response.put("status", status);
        return response;
	}
}
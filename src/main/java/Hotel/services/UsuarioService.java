/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.services;


import org.json.JSONObject;
import Hotel.dao.DAOFactory;
import Hotel.dao.UsuarioDAO;
import org.json.JSONArray;


/**
 *
 * @author sistem16user
 */
public class UsuarioService {

DAOFactory factoryMysql = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	UsuarioDAO daoUsuario = factoryMysql.getUsuario();
	

	public JSONObject validarUsuario(JSONObject obj) {
			JSONObject retorno = null;
		try {
//			System.out.println(obj);
			retorno = daoUsuario.ObtenerUsuario(obj);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retorno;
	}
	
	
	public JSONObject 	CargarCuartos(JSONObject obj) {
			JSONObject retorno = null;
		try {
//			System.out.println(obj);
			retorno = daoUsuario.Cargarcuartos(obj);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retorno;
	}

	
	

	public JSONObject estadoContraseña(JSONObject obj) {
				JSONObject retorno = null;
		try {
//			System.out.println(obj);
			retorno = daoUsuario.ObtenerEstadoContraseña(obj);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retorno;
	}

	public JSONObject actualizarPassword(JSONObject json) {
		JSONObject retorno = null;
		try {
//			System.out.println(obj);
			retorno = daoUsuario.actualizarPassword(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retorno;
	}

	public JSONObject ObtenerInfoH(JSONObject json) {
						JSONObject retorno = null;
		try {
//			System.out.println(obj);
			retorno = daoUsuario.ObtenerInfoH(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return retorno;




	}
	

}

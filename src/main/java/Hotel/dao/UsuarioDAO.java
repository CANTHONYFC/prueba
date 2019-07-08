/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author sistem16user
 */
public interface UsuarioDAO {
	public JSONObject ObtenerUsuario(JSONObject obj);

	public JSONObject ObtenerEstadoContraseña(JSONObject obj);

	public JSONObject actualizarPassword(JSONObject json);
	
	public JSONObject Cargarcuartos(JSONObject json);

	public JSONObject ObtenerInfoH(JSONObject json);

    public JSONObject insertarReserva(JSONObject json);

    public JSONObject listarReservaciones(JSONObject json);
	
		
}

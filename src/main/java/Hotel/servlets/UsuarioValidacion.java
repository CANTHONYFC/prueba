/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.services.UsuarioService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author sistem16user
 */
public class UsuarioValidacion extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String accion = request.getParameter("accion");
		switch (accion) {
			case "validarUsuario":
				validarUsuario(response, request);
				break;
					case "ValidarContra":
					ValidarContraseña(response, request);
				break;case "InfoUsuario":
					InfoUsuario(response, request);
				break;
				default:
		}
	}
	private void validarUsuario(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("application/json");
		try (PrintWriter out = response.getWriter()) {
			System.out.println("entro");
			UsuarioService servicio = new UsuarioService();
			int valor = 0;
			int usuario = Integer.parseInt(request.getParameter("txt_usuario").toString());
			String password = request.getParameter("txt_contrasena");
			JSONObject jsonUsuario = new JSONObject()
				.put("dni", usuario)
				.put("password", password);
			String jsonString = jsonUsuario.toString();
			JSONObject json = new JSONObject(jsonString);
			JSONObject jsonlistado = servicio.validarUsuario(json);
			JSONArray jsonArray = jsonlistado.getJSONArray("data");
			JSONObject jsonImprimir = new JSONObject();
			if(jsonArray.length()==0){
				jsonImprimir.put("data", 0);
			}else{
			JSONObject jsons = jsonArray.getJSONObject(0);
			valor = jsons.getInt("1");
			
			PrintWriter pw = response.getWriter();
			if (valor == 0) {
				jsonImprimir.put("data", valor);
			} else if (valor == 1) {
				int estadoC =jsons.getInt("4");
				if (estadoC == 0) { 
						jsonImprimir.put("data", valor);
						jsonImprimir.put("estadoC",estadoC);
				} else {
					HttpSession session_actual = request.getSession(true);
					session_actual.setAttribute("dni", usuario);
					session_actual.setAttribute("NombreCompleto", jsons.getString("2"));
						session_actual.setAttribute("TipoUsu", jsons.getInt("3"));
					session_actual.setMaxInactiveInterval(10 * 60 * 60); // 10 horas
					jsonImprimir.put("data", valor);
				}				
			}
					
			}
		out.println(jsonImprimir);

		}

	}
	
	
	private void InfoUsuario(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("application/json");
		HttpSession session_actual = request.getSession(true);
			String Apellidos = session_actual.getAttribute("NombreCompleto").toString();
			JSONObject jsonImprimir = new JSONObject();
		jsonImprimir.put("Apellidos", Apellidos);
	try(PrintWriter out = response.getWriter()){
			out.println(jsonImprimir);

		}

	}

	private void ValidarContraseña(HttpServletResponse response, HttpServletRequest request) throws IOException {
	 response.setContentType("application/json");
	 	
				try(PrintWriter out = response.getWriter()){
					JSONObject jsonImprimir = new JSONObject();
        		UsuarioService srv = new UsuarioService();
						
			 String jsonString = request.getParameter("json");
      
       JSONObject json = new JSONObject(jsonString);
			 String password=json.get("password").toString();
       String passwordConfir=json.get("confirpassword").toString();
			 String dni=json.get("dni").toString();
			 
			 if(password.equals(passwordConfir)){
				 if(password.equals(dni)){
				jsonImprimir.put("data", 3);
				}else{
				JSONObject jsonlistado = srv.actualizarPassword(json);
				HttpSession session_actual = request.getSession(true);
					session_actual.setAttribute("dni", dni);
					session_actual.setMaxInactiveInterval(10 * 60 * 60); 
				jsonImprimir.put("data", 1);}
			 }
			 else{
				 jsonImprimir.put("data", 0);
			  
	}			
			  out.println(jsonImprimir);
	}			
	}
}

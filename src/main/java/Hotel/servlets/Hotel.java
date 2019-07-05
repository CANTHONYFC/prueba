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
public class Hotel extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String accion = request.getParameter("accion");
		switch (accion) {
			case "CargarCuartos":
				CargarCuartos(response, request);
				break;	case "listarInformacionH":
				listarInformacionH(response, request);
				break;
				default:
		}
	}
	private void CargarCuartos(HttpServletResponse response, HttpServletRequest request) throws IOException {
	
			response.setContentType("application/json");
		try (PrintWriter out = response.getWriter()) {
			UsuarioService srv = new UsuarioService();
			String dibujar = request.getParameter("draw");
			JSONObject jsonCuartos = new JSONObject();
			String jsonString = jsonCuartos.toString();
			JSONObject json = new JSONObject(jsonString);
			int cantidadRegistros = 0;
			JSONObject jsonlistado = srv.CargarCuartos(json);
			JSONObject jsonImprimir = new JSONObject();

			jsonImprimir.put("data", jsonlistado.get("data"));
			jsonImprimir.put("draw", dibujar);
			out.println(jsonImprimir);
		}
		
	}

	private void listarInformacionH(HttpServletResponse response, HttpServletRequest request) throws IOException {
	
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		UsuarioService srv = new UsuarioService();
		String dibujar = request.getParameter("draw");
		String jsonString = request.getParameter("json");
		JSONObject json = new JSONObject(jsonString);
		JSONObject jsonlistado = srv.ObtenerInfoH(json);
		JSONObject jsonImprimir = new JSONObject();
		jsonImprimir.put("data", jsonlistado.get("data"));
		jsonImprimir.put("draw", dibujar);
		out.println(jsonImprimir);
	}
	
}

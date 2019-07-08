package Hotel.mysql;

import io.github.cdimascio.dotenv.Dotenv;
import java.sql.Connection;
import java.sql.DriverManager;
import Hotel.dao.DAOFactory;

import Hotel.dao.UsuarioDAO;
import Hotel.utilities.OsUtils;

public class MySqlDAOFactory extends DAOFactory {

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection obtenerConexion(String base) {
		Connection connection = null;

		if (base=="Tablet") {
			String host ="localhost";
			String port = "3306";
			String databaseName = "hotel";
			String userSgbd ="root";
			String passwordSgbd = "";
			try {
				connection = DriverManager.getConnection(
					"jdbc:mysql://" + host + ":" + port + "/" + databaseName + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false&noAccessToProcedureBodies=true",
					userSgbd,
					passwordSgbd);
//				System.out.println("se conecto");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return connection;
	}
	
	

	@Override
	public UsuarioDAO getUsuario() {
			return new UsuarioMysqlDao();
	}







}




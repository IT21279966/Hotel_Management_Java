package userPack;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connection {
	
	//Variables to save DB URL, Username, Password
	private static String url = "jdbc:mysql://localhost:3306/hotel";
	private static String user = "root";
	private static String pass = "";
	
	//Object to return connection using Connection method
	private static Connection con;
	
	//DB Connectivity method
	public static Connection createConnection() {
		
		try {
			
			//class driver to crate DB connectivity
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}catch(Exception e) {
			System.out.println("Connection with Database is failed!!!");
		}
		
		return con;
	}
	
}

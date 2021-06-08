package kursach.dabrabyt.bank.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class   JDBC_Connect {
	private Connection connection = null;

	public Connection getConnection() throws SQLException {
		try {

			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdabrabyt?autoReconnect=true&useSSL=false", "root", "270601");

		} catch (ClassNotFoundException e) {

			System.out.println("Внимание! У вас не установлен Oracle JDBC драйвер.");
			e.printStackTrace();

		}

		return connection;
	}
}

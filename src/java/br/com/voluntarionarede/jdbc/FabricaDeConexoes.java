package br.com.voluntarionarede.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FabricaDeConexoes {
	
	public static Connection getConnection(){
		
		Connection con=null;
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			con=DriverManager.getConnection("jdbc:mysql://192.168.43.81:3306/bdvoluntario","root","");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bdvoluntario","root","1234");
                        System.out.println("conectou");
		} catch (SQLException e) {
			System.out.println("Erro no caminho do Banco");
			e.printStackTrace();
		}
		return con;
	}
}

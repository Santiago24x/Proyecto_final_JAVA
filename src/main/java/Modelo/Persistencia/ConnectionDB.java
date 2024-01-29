package Modelo.Persistencia;

import java.sql.*;

public abstract class ConnectionDB {
    private static String url;
    private static String user;
    private static String password;
    private static Connection con;

    public static Connection MySQLConnection() {
        url = "jdbc:mysql://localhost:3306/naruto_santiago_marquez_bello";
        user = "root";
        password = "campus2024";
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
}
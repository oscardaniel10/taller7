package co.edu.sena.oscar.util;

import java.sql.*;

public class BasicConnectionWithResources {
    public static void main(String[] args) {
        String url =
                "jdbc:mysql://localhost:3306/uu?serveTimezone=America/Bogota";

        String username = "root";
        String password = "";

        String sql = "SELECT * FROM uu.usuario";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {

                System.out.println(rs.getString("user_firstname"));
                System.out.println(rs.getString("user_lastname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } //end try-catch
    } // main
}

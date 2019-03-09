package clases;

import java.sql.*;
import javax.swing.JOptionPane;

public class Conectar {

    Connection conect = null;

    public Connection conexion() {
        try {

            conect = DriverManager.getConnection("jdbc:mysql://localhost:3306/dmp?serverTimezone=America/Argentina/Buenos_Aires", "root", "21939786");

        } catch (SQLException e) {

            JOptionPane.showMessageDialog(null, e.getMessage(), "\nAdvertencia", JOptionPane.WARNING_MESSAGE);

        }

        return conect;
    }
}

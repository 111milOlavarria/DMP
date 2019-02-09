
package clases;

import java.sql.*;
import javax.swing.JOptionPane;


public class Conectar {
    Connection conect = null;
    public Connection conexion()
    {
        try {
            //Class.forName("com.mysql.cj.jdbc.Driver");

            //conect = DriverManager.getConnection("jdbc:mysql://localhost:3306/personas","root","root1234");

//                        try {
//                Class.forName("com.mysql.cj.jdbc.Driver");
//            } catch (ClassNotFoundException ex) {
//                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
//            }
            
            //conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd111mil?serverTimezone=America/Argentina/Buenos_Aires", usuario, contraseña);
       
            conect = DriverManager.getConnection("jdbc:mysql://localhost:3306/dmp?serverTimezone=America/Argentina/Buenos_Aires", "root", "21939786");            
              
        
        } //catch (ClassNotFoundException | SQLException e) {
        catch (SQLException e) {
        
            JOptionPane.showMessageDialog(null, e.getMessage(), "\nAdvertencia", JOptionPane.WARNING_MESSAGE);                
        
        }

        return conect;
    }     
}
     



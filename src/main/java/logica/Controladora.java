/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia ();
    
    public List<Producto> traerProductos (){
        return controlPersis.traerProductos();
    }
    
    public void crearUsuario (Usuario usu) {
        controlPersis.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuarios (){
        return controlPersis.traerUsuarios();
    }
    
    public boolean existeUsuarioInicioSesion(String gmail, String codigo) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean existe = false;

        // Establecer la conexión con la base de datos (ajustar la URL, usuario y contraseña)
        String url = "jdbc:mysql://localhost:3306/registrospeedwagon?serverTimezone=UTC";
        String usuarioDB = "jonathan";
        String contrasenaDB = "1868";
        conn = DriverManager.getConnection(url, usuarioDB, contrasenaDB);
        System.out.println("Conectando a la base de datos...");
        // Consultar la base de datos para verificar si el usuario existe
        String sql = "SELECT COUNT(*) AS existe FROM Usuario WHERE gmail = ? AND codigo = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, gmail);
        stmt.setString(2, codigo);
        rs = stmt.executeQuery();
        if (rs.next() && rs.getInt("existe") > 0) {
            existe = true;
        }
        // Cerrar la conexión y recursos JDBC (stmt, rs, conn)
        if (rs != null) {
            rs.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
            
        return existe;
    }
    
    public boolean existeUsuarioRegistro(String nombreusuario, String gmail) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean existe = false;

        // Establecer la conexión con la base de datos (ajustar la URL, usuario y contraseña)
        String url = "jdbc:mysql://localhost:3306/registrospeedwagon?serverTimezone=UTC";
        String usuarioDB = "jonathan";
        String contrasenaDB = "1868";
        conn = DriverManager.getConnection(url, usuarioDB, contrasenaDB);
        System.out.println("Conectando a la base de datos...");
        // Consultar la base de datos para verificar si el usuario existe
        String sql = "SELECT COUNT(*) AS existe FROM Usuario WHERE nombreusuario = ? OR gmail = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, nombreusuario);
        stmt.setString(2, gmail);
        rs = stmt.executeQuery();
        if (rs.next() && rs.getInt("existe") > 0) {
            existe = true;
        }
        // Cerrar la conexión y recursos JDBC (stmt, rs, conn)
        if (rs != null) {
            rs.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
            
        return existe;
    }
}

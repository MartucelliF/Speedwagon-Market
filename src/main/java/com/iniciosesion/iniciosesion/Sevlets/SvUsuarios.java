package com.iniciosesion.iniciosesion.Sevlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
Controladora control = new Controladora ();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvUsuarios</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvUsuarios at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String gmail = request.getParameter("gmail");
        String codigo = request.getParameter("codigo");

        try {
            // Verificar si el correo o nombre de usuario ya existen en la base de datos
            boolean usuarioExistente = control.existeUsuarioInicioSesion(gmail, codigo);

            if (usuarioExistente) {
                request.setAttribute("mostrarInicioSesionValido", true);
                System.out.println("¡Inicio de Sesión EXITOSO!");
                request.getRequestDispatcher("inicio.jsp").forward(request, response);

            } else {
                request.setAttribute("mostrarInicioSesionInvalido", true);
                System.out.println("El correo o la contraseña son inválidos");
                
                // Redirigir al usuario a una página de éxito o inicio de sesión
                request.setAttribute("mostrarAlertaError", true);
                request.getRequestDispatcher("indexInicioSesion.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            // Manejar la excepción SQL aquí
            ex.printStackTrace(); // Imprimir detalles de la excepción para depuración
            // Puedes redirigir al usuario a una página de error o realizar alguna otra acción apropiada
            // response.sendRedirect("error.jsp");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String nombreusuario = request.getParameter("nombreusuario");
        String apellido = request.getParameter("apellido");
        String gmail = request.getParameter("gmail");
        String codigo = request.getParameter("codigo");

        try {
            // Verificar si el correo o nombre de usuario ya existen en la base de datos
            boolean usuarioExistente = control.existeUsuarioRegistro(nombreusuario, gmail);

            if (usuarioExistente) {
                // Mostrar un mensaje de error si el correo o nombre de usuario ya existen
                request.setAttribute("mostrarAlertaError", true);
                System.out.println("Ya existe un usuario con este correo o nombre de usuario");
                request.getRequestDispatcher("index.jsp").forward(request, response);

            } else {
                // Si el usuario no existe, procede con el registro
                Usuario usu = new Usuario();
                usu.setNombreusuario(nombreusuario);
                usu.setApellido(apellido);
                usu.setGmail(gmail);
                usu.setCodigo(codigo);
                control.crearUsuario(usu);

                // Redirigir al usuario a una página de éxito o inicio de sesión
                request.setAttribute("mostrarAlertaValido", true);
                System.out.println("¡Bienvenido!");
                request.getRequestDispatcher("inicio.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            // Manejar la excepción SQL aquí
            ex.printStackTrace(); // Imprimir detalles de la excepción para depuración
            // Puedes redirigir al usuario a una página de error o realizar alguna otra acción apropiada
            // response.sendRedirect("error.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}



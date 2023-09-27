<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="logica.Producto"%>
<%@page import="java.lang.String"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
     
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylesCategorias.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/css2?family=Bungee&family=Rubik+Mono+One&display=swap" rel="stylesheet">
</head>
<body>

    <div class="container">
        <!-- Aqu� comienza la secci�n donde se mostrar�n los productos -->
        <% String categoria = request.getParameter("categoria"); %>
        <% request.setAttribute("categoria", categoria);  %>
        
        <h1><em><%=categoria%></em></h1>
        <div class="grillaproductos">
            <%
            try {
                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;
                Class.forName("com.mysql.cj.jdbc.Driver");
                // Establecer la conexi�n con la base de datos (ajusta la URL, el usuario y la contrase�a)
                String url = "jdbc:mysql://localhost:3306/registrospeedwagon?serverTimezone=UTC";
                String usuarioDB = "jonathan";
                String contraseniaDB = "1868";
                conn = DriverManager.getConnection(url, usuarioDB, contraseniaDB);
                System.out.println("Conectando a la base de datos...");

                // Consultar la base de datos para obtener los productos de la categor�a especificada
                String sql = "SELECT * FROM Producto WHERE categoria = ?";
                System.out.println("Ejecutando consulta SQL...");
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, categoria);
                rs = stmt.executeQuery();
                if (rs.next()) {
                    do{
            %>
                        <div class="product-frame">
                        <%System.out.println("Obteniendo datos del resultado 1...");%>
                            <a href="indexProducto.jsp?imagen=<%=rs.getString("img")%> &nombre=<%=rs.getString("nombre")%> &precio=<%=rs.getString("precio")%> &calificacion=<%=rs.getString("calificacion")%> &estado=<%=rs.getString("estado")%> &stock=<%=rs.getString("stock")%> &descripcion=<%=rs.getString("descripcion")%>">
                                <img src="<%=rs.getString("img") %>" alt="<%=rs.getString("nombre") %>">
                            </a>
                            <!--<p>Descripcion: <%=rs.getString("descripcion") %></p>
                            <p>Stock: <%=rs.getString("stock") %></p>-->
                            <div class="product-caract">
                                <div class="product-price"><h2><%=rs.getString("precio") %></h2></div>
                                <i class='bx bx-star'></i>
                                <div class="product-calif"><h2><%=rs.getString("calificacion") %></h2></div>
                                <div class="productoname"><h2><%=rs.getString("nombre") %></h2></div>
                            </div>
                        </div>
                        <% System.out.println("Obteniendo datos del resultado 2..."); %>
                    <%}while (rs.next());%>
            <%}else {
                System.out.println("La consulta no devolvi� resultados.");
                }
            %>

            <%    
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Cerrar la conexi�n y recursos JDBC (stmt, rs, conn)
                // ...
            }
            %>

        </div>
        <!-- Fin de la secci�n de productos -->

        <!-- Tu c�digo HTML para el pie de p�gina, scripts adicionales, etc. -->
    </div>
</body>
</html>

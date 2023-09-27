<%@page import="com.iniciosesion.iniciosesion.Sevlets.SvUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/stylesProducto.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Producto</title>
</head>

    <%
        String imagen = request.getParameter("imagen");
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");
        String stock = request.getParameter("stock");
        String estado = request.getParameter("estado");
        String descripcion = request.getParameter("descripcion");
        String calificacion = request.getParameter("calificacion");
    %>

    <body>
        <div class="imgProducto">
            <img src="<%=imagen%>" alt="<%=nombre%>">
        </div>
        <div class="nombreProducto"><%=nombre%></div>
        <div class="descripcionProducto"><%=descripcion%></div>
        <div class="compraProducto">
            <br>
            <br>
            <div class="precioProducto">US <%=precio%> </div>
            <br>
            <div class="stockProducto">Stock: <%=stock%> <br>Envío gratis a todo el mundo</div>
            <br>
            <br>
            <br>
            <br>
            <br>
           <div class="estadoProducto">
            <%
            if("AGOTADO".equals(estado)){
                // Si el estado es "AGOTADO", aplicar estilo de color rojo
            %>
                <span style="color: red;"><%= estado %></span>
            <%
            }else{
                // En otros casos, no aplicar ningún estilo especial
            %>
                <%=estado%>
            <%
            }
            %>
            </div>
            <h1>COMPRAR AHORA</h1>
            <br>
            <!--<h2>Agregar al carrito</h2>-->
        </div>
        <div class="caractProducto">
            <i class='bx bx-star'></i>
            <div class="califProducto"><%=calificacion%></div>
        </div>
    </body>
</html>
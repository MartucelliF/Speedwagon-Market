<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios registrados</h1>
            <% 
                List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                int cont = 1;
                    for(Usuario usu : listaUsuarios) {
            %>
                        <p><b>Cliente N° <%=cont%></b></p>
                        <p>Nombre usuario: <%=usu.getNombreusuario()%></p>
                        <p>Apellido: <%=usu.getApellido()%></p>
                        <p>Gmail: <%=usu.getGmail()%></p>
                        <p>------------------------------------</p>
                        <% cont = cont + 1;%>
                        
            <% } %>
    </body>
</html>

<%@page import="com.iniciosesion.iniciosesion.Sevlets.SvUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/stylesInicioSesion.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicia sesión</title>
</head>
    <body>
        <div class="Formulario">
            <div class="inputs">
                <form action="SvUsuarios" method="GET">
                        <h2 class="gmail">GMAIL:</h2>
                        <label></label><input class="gmail" type="text" name="gmail" size="39" placeholder="example@gmail.com" required>
                        <h2 class="codigo">CONTRASEÑA:</h2>
                        <label></label><input class="codigo" type="text" name="codigo" size="39" required>
                        <!--<p></p><button type="submit">ENVIAR</button></p>-->
                        <button type="submit" class="botonEnvio"></button>
                        <% if (request.getAttribute("mostrarInicioSesionInvalido") != null && (boolean) request.getAttribute("mostrarInicioSesionInvalido")) { %>
                        <script>
                            alert('El correo o la contraseña son inválidos');
                        </script>
                        <audio autoplay src="audio/sad.mp3"></audio>
                        <% } %>
                </form>
            </div>
            <img src="img/logo.PNG" alt="logoFundacionSpeedwagon">
        </div>
        
    </body>
</html>
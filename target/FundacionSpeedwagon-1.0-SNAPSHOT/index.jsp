<%@page import="com.iniciosesion.iniciosesion.Sevlets.SvUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/stylesRegistro.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicia sesión</title>
</head>
    <body>
        <div class="Formulario">
            <h1>¡Bienvenido! Registrese para continuar</h1>
            <div class="inputs">
                <form action="SvUsuarios" method="POST">
                    
                        <h2 class="nombre">NOMBRE DE USUARIO:</h2>
                        <label></label><input class="nombre" type="text" name="nombreusuario" size="9" required>
                        <h2 class="apellido">APELLIDO:</h2>
                        <label></label><input class="apellido" type="text" name="apellido" size="39" required>
                        <h2 class="gmail">GMAIL:</h2>
                        <label></label><input class="gmail" type="text" name="gmail" size="39" placeholder="example@gmail.com" required>
                        <h2 class="codigo">CONTRASEÑA:</h2>
                        <label></label><input class="codigo" type="text" name="codigo" size="39" required>
                        <!--<p></p><button type="submit">ENVIAR</button></p>-->
                        <button type="submit" class="botonEnvio"></button>
                        <% if (request.getAttribute("mostrarAlertaError") != null && (boolean) request.getAttribute("mostrarAlertaError")) { %>
                        <script>
                            alert('Ya existe una cuenta registrada con este correo electrónico o nombre de usuario.');
                        </script>
                        <audio autoplay src="audio/sad.mp3"></audio>
                        <% } %>
                        
                </form>
            </div>
            <img src="img/logo.PNG" alt="logoFundacionSpeedwagon">
            <h4>¿Ya tiene una cuenta registrada?</h4>
            <a href="indexInicioSesion.jsp" target="_blank">
                <strong>HAGA CLICK AQUÍ</strong>
            </a>
        </div>
        
    </body>
</html>
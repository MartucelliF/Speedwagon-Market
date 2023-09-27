<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/stylesBackEnd.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicia sesión</title>
</head>
    <body>
        <div class="Formulario">
            <h1>¡Bienvenido! Registrese para continuar</h1>
            <form action="SvUsuarios" method="POST">
                <h2 class="nombre">NOMBRE DE USUARIO:</h2>
                <label></label><input class="nombre" type="text" name="nombreusuario" size="9" required>
                <h2 class="apellido">APELLIDO:</h2>
                <label></label><input class="apellido" type="text" name="apellido" size="39" required>
                <h2 class="gmail">GMAIL:</h2>
                <label></label><input class="gmail" type="text" name="gmail" size="39" placeholder="example@gmail.com" required>
                <!--<p></p><button type="submit">ENVIAR</button></p>-->
                <button type="submit" class="botonEnvio"></button>
            </form>
            <img src="img/logo.PNG" alt="logoFundacionSpeedwagon">
            <h4>¿Ya tiene una cuenta registrada?</h4>
            <a href="video/videoSerio.mp4" target="_blank">
                <strong>HAGA CLICK AQUÍ</strong>
            </a>
        </div>
    </body>
</html>
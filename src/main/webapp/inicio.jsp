<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="logica.Producto"%>
<%@page import="logica.Producto"%>
<%@page import="logica.Controladora"%>
<%@page import="logica.Usuario"%>
<%@page import="com.iniciosesion.iniciosesion.Sevlets.SvUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/iniciostyle.css">
    <link rel="shortcut icon" href="speedicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Bungee&family=Rubik+Mono+One&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Speedwagon Market</title>
</head> 
<div class="marco">
    <body>
        <% if (request.getAttribute("mostrarAlertaValido") != null && (boolean) request.getAttribute("mostrarAlertaValido")) { %>
            <script>
                alert('¡Bienvenido/a a la Fundación Speedwagon!');
            </script>
            <audio autoplay src="audio/epic.mp3"></audio>
        <% } %>
        <% if (request.getAttribute("mostrarInicioSesionValido") != null && (boolean) request.getAttribute("mostrarInicioSesionValido")) { %>
            <script>
                alert('¡Inicio de Sesión EXITOSO!');
            </script>
            <audio autoplay src="audio/epic.mp3"></audio>
        <% } %>    
        <header>
                <div class="contfuente">
                    <h1>SPEEDWAGON'S</h1>
                    <h1 class="lolete">MARKET</h1>
                    <div class="searchDiv">   
                        <i class='bx bx-cog'></i> 
                        <input class="search" type="search">
                        <i class='bx bx-search bx-rotate-90'></i>
                    </div>
                    <div class="contSpeedwagon">
                        <a href="index.jsp">
                        <img src="img/iniciasesion.png" alt="SpeedWagon_T-POSE" class="tpose-image">
                        <!-- <img src="img/tpose.jpg" alt="SpeedWagon_T-POSE" class="tpose-image"> la idea sería que, al iniciar sesión se cambie a esta imagen-->
                        </a>
                    </div> 
                </div>
        </header>
        <nav class="navmain"> 
            <button class="menu" id="abrir">PRODUCTOS</button>
            <ul class="navbar" id="navcapo">        
                <li><a href="#">ACERCA DE</a></li>
                <li><a href="#">COMENTARIOS</a></li>
                <li><a href="#">AYUDA</a></li>
            </ul>
            <i class='bx bx-cart'></i>
        </nav>
        <div class="contbody">
            <nav class="hamburguesa" id="hamb">
                    <div class="flechita">
                        <li><p>Especial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
                        <div class="contLEYENDIOSO"></div>
                        <li><a href="categoriaProductos.jsp?categoria=Especial"><img src="img/prodflecha.PNG" class="flecha1"></a></li>
                    </div>
                    <li><img src="img/separadornav.PNG" class="separador"></li>
                    <div class="flechita">
                        <li><p>Decoracion&nbsp;</p></li>
                        <div class="contLEYENDIOSO"></div>
                        <li><a href="categoriaProductos.jsp?categoria=Decoracion"><img src="img/prodflecha.PNG" class="flecha2"></a></li>
                    </div>
                    <li><img src="img/separadornav.PNG" class="separador"></li>
                    <div class="flechita">
                        <li><p>Ropa&nbsp;&nbsp;</p></li>
                        <div class="contLEYENDIOSO"></div>
                        <li><a href="categoriaProductos.jsp?categoria=Ropa"><img src="img/prodflecha.PNG" class="flecha3"></a></li>
                    </div>
                    <li><img src="img/separadornav.PNG" class="separador"></li>
                    <div class="flechita">
                        <li><p>Mangas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
                        <div class="contLEYENDIOSO"></div>
                        <li><a href="categoriaProductos.jsp?categoria=Mangas"><img src="img/prodflecha.PNG" class="flecha4"></a></li>
                    </div>
                    <li><img src="img/separadornav.PNG" class="separador"></li>
                    <div class="flechita">
                        <li><p>Figuras&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></li>
                        <div class="contLEYENDIOSO"></div>
                        <li><a href="categoriaProductos.jsp?categoria=Figuras"><img src="img/prodflecha.PNG" class="flecha5"></a></li>
                    </div>
                    <li><img src="img/separadornav.PNG" class="separador"></li>
            </nav>
            <div class="contofertas">
                <img src="img/ofertas aplastantes.gif" id="imagenoferta">
            </div>
        </div>
        <footer>
            <p>&copy; 2023 Fundación Speedwagon. Todos los derechos reservados.</p>
        </footer>
        <script src="script/inicio.js"></script>
    </body>
</div>
</html>
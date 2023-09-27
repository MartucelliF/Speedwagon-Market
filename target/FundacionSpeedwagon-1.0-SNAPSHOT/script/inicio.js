/* el maldito menu hamburguesa----------------------- */

const hambur = document.querySelector("#hamb"); 
const abrirButton = document.querySelector("#abrir");

    abrirButton.addEventListener("click",() => {
    hambur.classList.toggle("visible")
});

/*----------------------------------------------------*/


/* cambio de ofertas con animacion------------------- */ 

/*

const images = [
        'img/ofertas aplastantes.gif',
        'img/gorro volador con cuchillas que rompe absolutamente todas las leyes de la fisica.gif',
        'img/speedmascarapiedra.gif'
    ];
    
    let currentIndex = 0;
    const contofertas = document.querySelector('.contofertas');

    function changeImage() {
        const imageName = images[currentIndex].split('/').pop();
        contofertas.innerHTML = `<img src="${images[currentIndex]}" alt="${imageName}">`;
    
        currentIndex = (currentIndex + 1) % images.length;

        // Cambiar la imagen después de 5 segundos (permanece estática)
        setTimeout(() => {
            //cambiar la imagen después y aplicar la animación de otros 3 segundos
            changeImage();
            contofertas.classList.remove('animate-left');
            setTimeout(() => {
                contofertas.classList.add('animate-left');
                
            }, 3000); // Cambiar después de 3 segundos
            
        }, 5000); // Mostrar estática durante 5 segundos
    }
    
    // Iniciar el cambio de imagen
    changeImage();

    */
   

/* ----------------------------------------------------*/

var imagenes = ["img/ofertas aplastantes.gif", "img/gorro volador con cuchillas que rompe absolutamente todas las leyes de la fisica.gif", "img/speedmascarapiedra.gif"];
var indice = 0; // Indice actual de la imagen
var imagen = document.getElementById("imagenoferta");

function cambiarImagen() {
    // Retraso para mostrar la imagen estática durante 2 segundos (2000 milisegundos)
    setTimeout(function () {
        // Cambiar la fuente de la imagen
        imagen.src = imagenes[indice];
        // Reiniciar la transformación para que la imagen vuelva a su posición original
        imagen.style.transform = "translateX(0)";
        // Incrementar el índice o reiniciarlo si llegamos al final del array
        indice = (indice + 1) % imagenes.length;
        
        // Después de 2 segundos (2000 milisegundos), mover la imagen hacia la izquierda
        setTimeout(function () {
            imagen.style.transform = "translateX(-100%)";
        }, 2000); // 2000 milisegundos = 2 segundos
    }, 2000); // 2000 milisegundos = 2 segundos
}

// Inicializar el cambio de imagen al cargar la página
cambiarImagen();

// Establecer un intervalo para llamar a la función cambiarImagen cada cierto tiempo (por ejemplo, cada 6 segundos)
var intervalo = setInterval(cambiarImagen, 3500); // 6000 milisegundos = 6 segundos

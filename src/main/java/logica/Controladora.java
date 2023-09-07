/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia ();
    
    public void crearUsuario (Usuario usu) {
        controlPersis.crearUsuario(usu);
    }
    
    public List<Usuario> traerUsuarios (){
        return controlPersis.traerUsuarios();
    }
    
}

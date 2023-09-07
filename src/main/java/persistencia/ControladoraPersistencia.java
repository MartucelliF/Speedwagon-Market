/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
import logica.Usuario;

public class ControladoraPersistencia {

    UsuarioJpaController usuJpa = new UsuarioJpaController ();
    
    //Operación CREATE
    public void crearUsuario (Usuario usu) {
        usuJpa.create(usu);
    }
    
    //Operación READ
    public List<Usuario> traerUsuarios () {
           return usuJpa.findUsuarioEntities();
    }
        
}

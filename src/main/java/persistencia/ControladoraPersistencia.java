/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.util.List;
import logica.Producto;
import logica.Usuario;

public class ControladoraPersistencia {
    
    ProductoJpaController proJpa = new ProductoJpaController ();
    
    //Operación READ
    public List<Producto> traerProductos () {
        return proJpa.findProductoEntities();
    }
    
    
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

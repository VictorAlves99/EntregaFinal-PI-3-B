package br.DevBros.Noobies.Login;

import br.DevBros.Noobies.Login.Cargo;
import br.DevBros.Noobies.Login.Usuario;
import java.sql.SQLException;
import java.util.Arrays;
/**
 *
 * @author nathan.osantos
 */
public class UsuarioSistemaService {
    
    public Usuario buscaUsuario(String u)throws SQLException{
        return UsuarioDAO.buscaUsuario(u); 
    }
}

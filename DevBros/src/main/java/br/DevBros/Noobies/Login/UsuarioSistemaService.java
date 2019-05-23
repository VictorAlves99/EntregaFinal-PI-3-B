package br.DevBros.Noobies.Login;

import br.DevBros.Noobies.Login.Cargo;
import br.DevBros.Noobies.Login.Usuario;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
/**
 *
 * @author nathan.osantos
 */
public class UsuarioSistemaService {
    private static final Map<String, Usuario> Usuarios = new LinkedHashMap<>();
    
    static{
        //busca os dados do usuário no banco
        //Usuarios.put(key, value);
    }
    public Usuario buscarUsername(String username){
        return Usuarios.get(username);
    }
}

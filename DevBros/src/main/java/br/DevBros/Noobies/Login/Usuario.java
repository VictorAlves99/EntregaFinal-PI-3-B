package br.DevBros.Noobies.Login;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;


/**
 *
 * @author nathan.osantos
 */
public class Usuario implements Serializable{
    private String login;  
    private String senha;
    private String cargo;

    public Usuario(){
        
    }
    public Usuario(String login, String senha, String cargo){
         this.login = login;
         
         this.senha = senha;
         this.cargo = cargo;
    }
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public String getCargo() {
        return cargo;
    }
    
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
  
    public boolean validarSenha(String senha) throws SQLException{
        UsuarioDAO user = new UsuarioDAO();
        Usuario u = user.buscaUsuario(getLogin());
        if(senha.equals(u.senha)){
            return true;
        }
        return false;
    }
    public boolean verificarCargo(String nomeCargo){
        Cargo c = new Cargo();
        {
            if(c.getNomeCargo().equals(nomeCargo)){
                return true;
            }            
        }
        return false;
    }        
}

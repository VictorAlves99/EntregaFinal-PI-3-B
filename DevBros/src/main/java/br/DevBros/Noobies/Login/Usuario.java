package br.DevBros.Noobies.Login;

import java.io.Serializable;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;


/**
 *
 * @author nathan.osantos
 */
public class Usuario implements Serializable{
    private String login;
    private String nomeCompleto;
    private String hashSenha;

   // private List<Cargo> cargo;

    public Usuario(){
        
    }
    public Usuario(String login, String nomeCompleto, List<Cargo> cargo){
         this.login = login;
         this.nomeCompleto = nomeCompleto;
         setSenha(senhaAberta);
         this.cargo = cargo;
    }
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getHashSenha() {
        return hashSenha;
    }

    public void setHashSenha(String senha) {
        this.hashSenha = senha;
    }
    public void setSenha(String senhaAberta){
        this.hashSenha = BCrypt.hashpw(senhaAberta, BCrypt.gensalt());
    }

    /*public List<Cargo> getCargo() {
        return cargo;
    }

    public void setCargo(List<Cargo> cargo) {
        this.cargo = cargo;
    }*/
    public boolean validarSenha(String senhaAberta){
        return BCrypt.checkpw(senhaAberta, hashSenha);
    }
           
}

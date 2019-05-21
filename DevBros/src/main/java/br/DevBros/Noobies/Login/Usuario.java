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
    private String senha;
    private List<Cargo> cargos;

    public Usuario(){
        
    }
    public Usuario(String login, String nomeCompleto, String senha, List<Cargo> cargos){
         this.login = login;
         this.nomeCompleto = nomeCompleto;
         this.senha = senha;
         this.cargos = cargos;
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
    public void setSenha(String senha){
        this.hashSenha = BCrypt.hashpw(senha, BCrypt.gensalt());
    }

    public List<Cargo> getCargo() {
        return cargos;
    }

    public void setCargo(List<Cargo> cargo) {
        this.cargos = cargo;
    }
    public boolean validarSenha(String senhaAberta){
        return BCrypt.checkpw(senhaAberta, hashSenha);
    }
    public boolean verificarCargo(String nomeCargo){
        for (Cargo c : cargos){
            if(c.getNomeCargo().equals(nomeCargo)){
                return true;
            }            
        }
        return false;
    }        
}

package br.DevBros.Noobies.Login;
import java.io.Serializable;
/**
 *
 * @author nathan.osantos
 */
public class Cargo implements Serializable{
    private String nomeCargo;  
    public Cargo(){
    }
    public Cargo(String nome){
        this.nomeCargo = nomeCargo;
    }
        public String getNomeCargo() {
        return nomeCargo;
    }
    public void setNomeCargo(String nomeCargo) {
        this.nomeCargo = nomeCargo;
    }   
}

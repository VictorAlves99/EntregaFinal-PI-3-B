package br.DevBros.Noobies.Clientes;
import java.sql.Date;

public class Cliente {
    
    private int codCliente;
    private String nome;
    private String cpf;
    private String telefone;
    private String email;
    
    public Cliente(){
        
    }    
    
    public Cliente(int codCliente){
        this.codCliente = codCliente;
    }    

    public Cliente(String nome,String cpf, String telefone, String email ) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email; 
    }
    
    public Cliente(int codCliente, String nome, String cpf,String telefone, String email ) {
        this.codCliente = codCliente;
        this.nome = nome;
        this.cpf = cpf;  
        this.telefone = telefone;
        this.email = email;
    }

    Cliente(String codCliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int getcodCliente() {
        return codCliente;
    }

    public void setcodCliente(int codCliente) {
        this.codCliente = codCliente;
    }
  
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }   
}

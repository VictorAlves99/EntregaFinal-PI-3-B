package br.DevBros.Noobies.Clientes;

import static br.DevBros.Noobies.Utils.ConnectionUtils.obterConexao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    //CADASTRO DE CLIENTES
    public static boolean incluirCliente(Cliente c){
        PreparedStatement stmt = null;
        Connection conn = null;
        
        boolean linhasAfetadas = false;
          
        String sql = "INSERT INTO TB_CLIENTES (NOME_CLIENTE, CPF_CLIENTE, TELEFONE_CLIENTE, EMAIL_CLIENTE) VALUES(?, ?, ?, ?)";
    
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, c.getNome());
            stmt.setString(2, c.getCpf());           
            stmt.setString(3, c.getTelefone());   
            stmt.setString(4, c.getEmail());
                  
            stmt.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException e) {
            linhasAfetadas = false;
            System.out.println("Não foi possível executar" + e);
        } finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    linhasAfetadas = false;
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
            if(conn != null){
                try {
                    conn.close();
                    linhasAfetadas = true;
                } catch (SQLException e) {
                    linhasAfetadas = false;
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
        }
        return linhasAfetadas;
    }
    //ALTERAÇÃO DE CLIENTES
    public static void alterarCliente(Cliente c){
        
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "UPDATE TB_CLIENTES SET NOME_CLIENTE = ?, CPF_CLIENTE = ?, TELEFONE_CLIENTE = ?, EMAIL_CLIENTE = ? WHERE COD_CLIENTE= ?";
        
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
                      
            stmt.setString(1, c.getNome());
            stmt.setString(2, c.getCpf()); 
            stmt.setString(3, c.getTelefone());
            stmt.setString(4, c.getEmail());
            stmt.setInt(5, c.getcodCliente());
            
                      
            stmt.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Não foi possível executar" + e);
        } finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
            if(conn != null){
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
        }   
    }
    //EXCLUSÃO DE CLIENTES
    public static boolean excluirCliente(Cliente c){
        
        PreparedStatement stmt = null;
        Connection conn = null;
        boolean verdade = false;
        
        String sql = "DELETE FROM TB_CLIENTES WHERE COD_CLIENTE = ?";
        
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, c.getcodCliente());
            stmt.executeUpdate();
            
        } catch (SQLException e) {
            System.out.println("Não foi possível executar" + e);
            verdade = false;
        } catch(ClassNotFoundException ex){
           System.out.println("Não foi possível executar. ClassNotFound Exception");
           verdade = false;
           
        }finally{
            if(stmt != null){
                try {
                    stmt.close();
                    verdade = true;
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                    verdade = false;
                }
            }
            if(conn != null){
                try {
                    conn.close();
                    verdade = true;
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                    verdade = true;
                }
            }
        }
        return verdade;
    }
    //pesquisa de cliente
    public static List<Cliente> pesquisarCliente(){
        
        PreparedStatement stmt = null;
        Connection conn = null;
        
        List<Cliente> lista = new ArrayList<Cliente>();
        
        String sql = "SELECT * FROM TB_CLIENTES LIMIT 8";
        
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
                       
            
            ResultSet rs = stmt.executeQuery();
           
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setcodCliente(rs.getInt("COD_CLIENTE"));
                cliente.setNome(rs.getString("NOME_CLIENTE"));
                cliente.setCpf(rs.getString("CPF_CLIENTE"));                
                cliente.setTelefone(rs.getString("TELEFONE_CLIENTE"));        
                cliente.setEmail(rs.getString("EMAIL_CLIENTE"));
                
                lista.add(cliente);
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Não foi possível executar" + e);
        } finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
            if(conn != null){
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
        }
        return lista;
    }
    //listagem de clientes
    public static List<Cliente> consultarClientes(String pesquisa){
        List<Cliente> lista = new ArrayList<>();
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "SELECT * FROM tb_clientes WHERE NOME_CLIENTE LIKE '%"+pesquisa+"%';";
                
        try {
            
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                Cliente cliente = new Cliente();
                cliente.setcodCliente(rs.getInt("COD_CLIENTE"));
                cliente.setNome(rs.getString("NOME_CLIENTE"));
                cliente.setCpf(rs.getString("CPF_CLIENTE"));                           
                cliente.setTelefone(rs.getString("TELEFONE_CLIENTE"));   
                cliente.setEmail(rs.getString("EMAIL_CLIENTE"));
                
                lista.add(cliente);
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Não foi possível executar" + e);
        } finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
            if(conn != null){
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
        }
        
        return lista;
    }
    
    
    public static Cliente buscarCliente(Cliente c){
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "SELECT * FROM tb_clientes WHERE COD_CLIENTE=?";
        
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            
            stmt.setInt(1, c.getcodCliente());
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                c.setcodCliente(rs.getInt("COD_CLIENTE"));
                c.setNome(rs.getString("NOME_CLIENTE"));
                c.setCpf(rs.getString("CPF_CLIENTE"));
                c.setTelefone(rs.getString("TELEFONE_CLIENTE"));
                c.setEmail(rs.getString("EMAIL_CLIENTE"));
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Não foi possível executar" + e);
        } finally{
            if(stmt != null){
                try {
                    stmt.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
            if(conn != null){
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Erro ao fechar conexão" + e);
                }
            }
        }
        return c;
    
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Vendas;

import br.DevBros.Noobies.Produtos.Produto;
import static br.DevBros.Noobies.Utils.ConnectionUtils.obterConexao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author victor.maoliveira
 */
public class VendasDAO {
    
    public static void incluirVenda(Venda v){
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "INSERT INTO tb_vendas (VALOR_TOTAL, FORMA_PGTO)"
                     + "VALUES(?, ?)";
        
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            
            stmt.setDouble(1, v.getValorTotal());
            stmt.setString(2, "Dinheiro");
            
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
    
    public static Item listarItens(int idItem, Produto produto, int quant){
        Item item = null;
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "SELECT * FROM tb_produtos WHERE COD_PRODUTO LIKE '%"+produto.getCodProduto()+"%' LIMIT 1;";
                
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                Produto prod = new Produto();
                prod.setCodProduto(rs.getInt("COD_PRODUTO"));
                prod.setNomeProd(rs.getString("NOME_PRODUTO"));
                prod.setValorVenda(rs.getDouble("VALOR_VENDA"));
                prod.setCategoria(rs.getString("CATEGORIA"));
                
                item = new Item(1,prod, quant);
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
        return item;
    }
    
    public static Item listarItens(int idItem, int cod, int quant){
        Item item = null;
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "SELECT * FROM tb_produtos WHERE COD_PRODUTO LIKE '%"+cod+"%' LIMIT 1;";
                
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()){
                Produto prod = new Produto();
                prod.setCodProduto(rs.getInt("COD_PRODUTO"));
                prod.setNomeProd(rs.getString("NOME_PRODUTO"));
                prod.setValorVenda(rs.getDouble("VALOR_VENDA"));
                prod.setCategoria(rs.getString("CATEGORIA"));
                
                item = new Item(prod, quant);
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
        return item;
    }
    
    public static List<Venda> pesquisarVendas(String inicio, String fim){
        List<Venda> lista = new ArrayList<>();
        PreparedStatement stmt = null;
        Connection conn = null;
        
        String sql = "select * from tb_vendas WHERE DATA_COMPRA >= '"+inicio+"' AND DATA_COMPRA <= '"+fim+"';";
                
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();
            

            while(rs.next()){
                Venda venda = new Venda();
                venda.setDataCompra(rs.getDate("DATA_COMPRA"));
                venda.setValorTotal(rs.getFloat("VALOR_TOTAL"));
                venda.setFormaPgto(rs.getString("FORMA_PGTO"));
                                
                lista.add(venda);
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
    
}

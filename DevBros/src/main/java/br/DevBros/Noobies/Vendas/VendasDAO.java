/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Vendas;

import static br.DevBros.Noobies.Utils.ConnectionUtils.obterConexao;
import java.sql.Connection;
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
                venda.setCOD_VENDA(rs.getInt("COD_VENDA"));
                venda.setDATA_COMPRA(rs.getString("DATA_COMPRA"));
                venda.setCOD_FUNCIONARIO(rs.getInt("COD_FUNCIONARIO"));
                venda.setCPF_CLIENTE(rs.getLong("CPF_CLIENTE"));
                venda.setCOD_PRODUTO(rs.getInt("COD_PRODUTO"));
                venda.setVALOR_TOTAL(rs.getFloat("VALOR_TOTAL"));
                                
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

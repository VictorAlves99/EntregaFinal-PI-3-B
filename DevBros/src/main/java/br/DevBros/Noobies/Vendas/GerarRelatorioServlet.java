/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Vendas;

import br.DevBros.Noobies.Produtos.ConsultarProdutoServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author victor.maoliveira
 */
@WebServlet(name = "GerarRelatorioServlet", urlPatterns = {"/gerarRelatorio"})
public class GerarRelatorioServlet extends HttpServlet {

    private void listarVendas(String metodoHttp, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
        
        String inicio;
        inicio = request.getParameter("inicio");
        String fim;
        fim = request.getParameter("fim");
        
        if(inicio != null){
            if(fim != null){
                List<Venda> vendas = VendasDAO.pesquisarVendas(inicio,fim);
                request.setAttribute("listaVendas",null);
                request.setAttribute("listaVendas", vendas);
            }else{
                System.out.println("Insira uma data de término!");
            }
        }else{
            System.out.println("Insira uma data de início!");
        }
        
            
               
        RequestDispatcher dispatcher = request.getRequestDispatcher("relatorio.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            listarVendas("GET", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            listarVendas("POST", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        doGet(request, response);
    }
}

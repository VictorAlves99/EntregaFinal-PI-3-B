/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Vendas;

import br.DevBros.Noobies.Produtos.ConsultarProdutoServlet;
import br.DevBros.Noobies.Produtos.Produto;
import br.DevBros.Noobies.Produtos.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PesquisarProdutoVendasServlet", urlPatterns = {"/pesquisaProdVenda"})
public class PesquisarProdutoVendasServlet extends HttpServlet {

    double valorTotal = 0.0;
    
    List<Item> itens = new ArrayList<>();
    
    private void listarProdutos(String metodoHttp, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {

        int valorPesquisa = Integer.parseInt(request.getParameter("cod_produto"));
        int quantidade = Integer.parseInt(request.getParameter("quantidadeVenda"));
        
        Item i = new Item();
        
        int idItem = 0;
        idItem++;
        
        if(itens.isEmpty()){
            Produto prod = new Produto(valorPesquisa);
            ProdutoDAO.pesquisar(prod);
            Item item = VendasDAO.listarItens(idItem, prod, quantidade);
            
            itens.add(item);
            
            valorTotal += i.getConta(prod, quantidade);

            request.setAttribute("valor", valorTotal);
            request.setAttribute("listaItens", itens);

            RequestDispatcher dispatcher = request.getRequestDispatcher("vendas.jsp");
            dispatcher.forward(request, response);
        }else{
            Item item = VendasDAO.listarItens( 1 , valorPesquisa, quantidade);
            itens.add(item);
            
            valorTotal += i.getConta(item.getProduto(), quantidade);

            request.setAttribute("valor", valorTotal);
            request.setAttribute("listaItens", itens);
            

            RequestDispatcher dispatcher = request.getRequestDispatcher("vendas.jsp");
            dispatcher.forward(request, response);
        }        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            listarProdutos("GET", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            listarProdutos("POST", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        doGet(request, response);
    }
}

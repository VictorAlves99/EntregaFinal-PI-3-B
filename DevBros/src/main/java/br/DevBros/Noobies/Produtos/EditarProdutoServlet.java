/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Produtos;

import br.DevBros.Noobies.Produtos.ConsultarProdutoServlet;
import br.DevBros.Noobies.Produtos.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(name = "EditarProdutoServlet", urlPatterns = {"/EditarProduto"})
public class EditarProdutoServlet extends HttpServlet {

    private void editarProduto(String metodoHttp, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
        
        Produto produto = new Produto();
        
        // RECUPERA INFORMACOES DA REQUISICAO
        
        produto.setNomeProd(request.getParameter("nomeProd"));
        produto.setValorCompra(Float.parseFloat(request.getParameter("valorCompra")));
        produto.setValorVenda(Float.parseFloat(request.getParameter("valorVenda")));
        produto.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
        produto.setCategoria(request.getParameter("categoria"));
        produto.setCodProduto(Integer.parseInt(request.getParameter("codProduto")));
        
        ProdutoDAO.editarProduto(produto);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/consultar");
        dispatcher.forward(request, response);

    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            editarProduto("GET", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            editarProduto("POST", request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ConsultarProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        doGet(request, response);
    }
}

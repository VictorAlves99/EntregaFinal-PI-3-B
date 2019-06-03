/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Vendas;

import java.io.IOException;
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
@WebServlet(name = "CadastrarVendaServlet", urlPatterns = {"/finalizaCompra"})
public class CadastrarVendaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Venda venda = new Venda();
        
        venda.setValorTotal(Float.parseFloat(request.getParameter("valorTotal")));
        venda.setFormaPgto(request.getParameter("pgto"));
        
        VendasDAO.incluirVenda(venda);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/sucesso.jsp");
        dispatcher.forward(request, response);
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

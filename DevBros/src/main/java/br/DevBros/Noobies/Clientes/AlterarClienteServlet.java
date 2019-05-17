/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Clientes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gabriela.vsmarques
 */
@WebServlet(name = "AlterarClienteServlet", urlPatterns = {"/alterarcliente"})
public class AlterarClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        int codCliente = Integer.parseInt(request.getParameter("codCliente"));
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        String email = request.getParameter("email");
        
        Cliente c = new Cliente(codCliente, nome, cpf, telefone, email); 
        ClienteDAO.alterarCliente(c);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/consultarclientes");
        dispatcher.forward(request, response);
    }

}

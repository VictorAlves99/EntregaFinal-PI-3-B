package br.DevBros.Noobies.Clientes;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditarClienteServlet", urlPatterns = {"/editarcliente"})
public class EditarClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        int codCliente = Integer.parseInt(request.getParameter("codCliente"));
        
        Cliente c = new Cliente(codCliente);
        c = ClienteDAO.buscarCliente(c);
        request.setAttribute("cliente", c);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/editarCliente.jsp");
        dispatcher.forward(request, response);
        
    }

   
}

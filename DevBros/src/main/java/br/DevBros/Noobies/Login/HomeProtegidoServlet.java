package br.DevBros.Noobies.Login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author nathan.osantos
 */
@WebServlet(name = "HomeProtegidoServlet", urlPatterns = {"/protegido/home"})
public class HomeProtegidoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/menu.jsp").forward(request, response);
    }
}
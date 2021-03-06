package br.DevBros.Noobies.Login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nathan.osantos
 */
@WebServlet(name="DiretorServlet", urlPatterns={"/protegido/diretor"})
public class DiretorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("cargo", "Diretor");
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}

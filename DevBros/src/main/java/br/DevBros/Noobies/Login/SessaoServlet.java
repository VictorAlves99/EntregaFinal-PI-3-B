/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.DevBros.Noobies.Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author nathan.osantos
 */
@WebServlet(name = "SessaoServlet", urlPatterns = {"/exemplo-sessao"})
public class SessaoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        HttpSession sessao = request.getSession();
        
        if(sessao.getAttribute("acessos")==null){
            sessao.setAttribute("acessos", new ArrayList<LocalDateTime>());
        }
        List <LocalDateTime> listaAcessos = (List<LocalDateTime>) sessao.getAttribute("acessos");
        listaAcessos.add(LocalDateTime.now());               
            
    }
    
}

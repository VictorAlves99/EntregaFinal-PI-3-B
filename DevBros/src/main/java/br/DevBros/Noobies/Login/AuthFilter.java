package br.DevBros.Noobies.Login;

import br.DevBros.Noobies.Login.Usuario;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nathan.osantos
 */
public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, 
            ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        
       HttpServletRequest httpRequest = (HttpServletRequest) request;
       HttpServletResponse httpResponse = (HttpServletResponse) response;
       
        HttpSession sessao = httpRequest.getSession();
        if (sessao.getAttribute("usuario") == null){           
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/index.jsp");
            return;
        }
        Usuario usuario = (Usuario)sessao.getAttribute("usuario");
        
        if (verificarAcesso(usuario, httpRequest, httpResponse)) {
            chain.doFilter(request, response);
        } else {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/erro-nao-autorizado.jsp");
        }
    }
    private boolean verificarAcesso(Usuario usuario,
            HttpServletRequest request, 
            HttpServletResponse response) {
        String paginaAcessada = request.getRequestURI();
        if (paginaAcessada.endsWith("/menu.jsp")){
            return true;
        }else if (paginaAcessada.endsWith(".")&&usuario.verificarCargo("Diretor")){
            return true;
        }else if (paginaAcessada.endsWith(".")&&usuario.verificarCargo("Vendedor")){
            return true;
        }
        return false;
    }
    @Override
    public void destroy() {
    }
}

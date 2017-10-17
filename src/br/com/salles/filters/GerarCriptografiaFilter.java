package br.com.salles.filters;

import br.com.salles.services.EncryptionService;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter(filterName = "GerarCriptografiaFilter", servletNames = {"VerificarLogin"})
public class GerarCriptografiaFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {

        HttpSession session = ((HttpServletRequest) request).getSession(true);
        session.setAttribute("senha", EncryptionService.encryptString(request.getParameter("senha")));

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {  }

    @Override
    public void init(FilterConfig filterConfig) {   

    }
}

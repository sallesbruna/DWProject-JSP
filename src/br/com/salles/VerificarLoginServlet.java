/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.salles;

import br.com.salles.services.AuthenticationService;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "VerificarLogin", urlPatterns = {"/VerificarLogin"})
public class VerificarLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	
        String nome_user = request.getParameter("nome");
        String senha_user = (String) session.getAttribute("senha");

        if (AuthenticationService.verificarUsuario(nome_user, senha_user)) {
            session.setAttribute("NomeUsuarioLogado", "admin");
            session.setAttribute("logado", "ok");
            
            RequestDispatcher resposta = request.getRequestDispatcher("bemvindo.jsp");
            resposta.forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.sendRedirect("index.jsp");
    }

}

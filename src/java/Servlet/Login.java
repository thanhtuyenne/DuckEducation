/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String control = request.getParameter("control");
        request.removeAttribute("message");
        if (control != null) {
            String username, password;
            username = request.getParameter("username");
            password = request.getParameter("password");
            try {
                JavaBean.User user = DB.lib.DB_Login(username, password);
                if (!user.getRole().isEmpty()) {
                    ServletContext sv = getServletContext();
                    sv.setAttribute("user", user);
                    sv.setAttribute("role", user.getRole());
                    response.sendRedirect(request.getContextPath() + "/student");
                } else {
                    request.setAttribute("message", "Username or password Wrong!");
                    RequestDispatcher dispatcher;
                    dispatcher = getServletContext().getRequestDispatcher(lib.Web.LOGIN);
                    dispatcher.forward(request, response);
                }
                return;
            } catch (Exception ex) {
                ex.printStackTrace();
                request.setAttribute("message", ex.getMessage());
            }
        }
        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher(lib.Web.LOGIN);
        dispatcher.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

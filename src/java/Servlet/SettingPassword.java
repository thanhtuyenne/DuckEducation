/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thanh Tuyen
 */
public class SettingPassword extends HttpServlet {

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
        String username = "admin";
        request.removeAttribute("message");
        String oldpw = request.getParameter("oldpw");
        String newpw = request.getParameter("newpw");
        String confirmpw = request.getParameter("confirmpw");
        try {
            if (DB.lib.DB_CheckPassword(oldpw, username)) {
                if (newpw.equals(confirmpw)) {
                    DB.lib.DB_ChangePassword(newpw, confirmpw, username);
                    request.setAttribute("mesage", "Successful");
                    RequestDispatcher dispatcher;
                    dispatcher = getServletContext().getRequestDispatcher(lib.Web.SETTING);
                    dispatcher.forward(request, response);
                    return;
                } else {
                    request.setAttribute("message", "Password not match");
                    RequestDispatcher dispatcher;
                    dispatcher = getServletContext().getRequestDispatcher(lib.Web.SETTING);
                    dispatcher.forward(request, response);
                }
            } else {
                request.setAttribute("message", "Wrong password!");
                RequestDispatcher dispatcher;
                dispatcher = getServletContext().getRequestDispatcher(lib.Web.SETTING);
                dispatcher.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SettingPassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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

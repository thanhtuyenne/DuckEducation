/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class control extends HttpServlet {

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
        RequestDispatcher dispatcher;
        String pattern = request.getParameter("button-control");
        if (pattern.equals("login")) {
            response.sendRedirect(request.getContextPath() + "\\login");
        } else if (pattern.equals("signup")) {
            response.sendRedirect(request.getContextPath() + "\\signup");
        } else if (pattern.equals("forgot-password")) {
            response.sendRedirect(request.getContextPath() + "\\forgotpw");
        } else if (pattern.equals("setting")) {
            response.sendRedirect(request.getContextPath() + "\\setting");
        } else if (pattern.equals("logout")) {
            response.sendRedirect(request.getContextPath() + "\\logout");
        } else if (pattern.equals("message")) {
            response.sendRedirect(request.getContextPath() + "\\message");
        } else if (pattern.equals("study")) {
            response.sendRedirect(request.getContextPath() + "\\study");
        } else if (pattern.equals("discussion")) {
            response.sendRedirect(request.getContextPath() + "\\discussion");
        } else if (pattern.equals("user")) {
            response.sendRedirect(request.getContextPath() + "\\user");
        } else if (pattern.equals("editProfile")) {
            response.sendRedirect(request.getContextPath() + "\\editProfile");
        } else if (pattern.equals("save")) {
            response.sendRedirect(request.getContextPath() + "\\user");
        } else if (pattern.equals("sendcode")) {
            response.sendRedirect(request.getContextPath() + "\\send_code");
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

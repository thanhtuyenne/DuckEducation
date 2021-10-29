/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import email.JavaMailUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "fogot_password", urlPatterns = {"/forgot_password"})
public class forgot_password extends HttpServlet {

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
        System.out.println("-----this is Servlet forgot-password");
        HttpSession session = request.getSession(false);
        String email = request.getParameter("email");
        System.out.println("validate email");
        if (validate(email)) {
            System.out.println("validate email success");
            String email_database = "cathuan113@gmail.com"; // tìm xem trong database có gmail nào trùng với gmail input user

            if (email.equals(email_database)) {
                System.out.println("email has exsit!");
                try {
                    System.out.println("session on fw sendmail");
                    JavaMailUtil.sendMail(session, email);
                    String n = session.getAttribute("code").toString();
                    System.out.println("code is: " + n);
                    RequestDispatcher dispatcher;
                    dispatcher = getServletContext().getRequestDispatcher("/send_code");
                    dispatcher.forward(request, response);
                    return;
                } catch (MessagingException ex) {
                    Logger.getLogger(forgot_password.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                System.out.println("email dosen't exsit!");

                request.setAttribute("show_modal", "true");
                request.setAttribute("show_modal3", "false");
                RequestDispatcher dispatcher;
                dispatcher = getServletContext().getRequestDispatcher(lib.Web.FORGOT_PASSWORD);
                dispatcher.forward(request, response);
            }
        } else {
            System.out.println("validate email not success");
            request.setAttribute("show_modal3", "true");
            request.setAttribute("show_modal", "false");
            RequestDispatcher dispatcher;
            dispatcher = getServletContext().getRequestDispatcher(lib.Web.FORGOT_PASSWORD);
            dispatcher.forward(request, response);
        }

    }
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX
            = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validate(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
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

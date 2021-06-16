/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user.userDAO;
import user.userDTO;

/**
 *
 * @author theta
 */
@WebServlet(name = "editMyProfileController", urlPatterns = {"/editMyProfile"})
public class editMyProfileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        userDTO u = (userDTO) session.getAttribute("user");
        userDAO userDAO = new userDAO();

        String email = request.getParameter("email");
        String fullName = request.getParameter("fullName");
        String avatarLink = request.getParameter("avatarLink");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        Date creationDate = u.getCreationDate();
        String gender = request.getParameter("gender");
        int status = u.getStatus();
        int roleId = u.getRoleID();
        userDAO.editMyProfile(email, password, avatarLink, address, fullName, phoneNumber, gender, creationDate, status, roleId);
        
        request.setAttribute("uDTO", u);
        session.setAttribute("user", u);
        request.getRequestDispatcher("getMyProfile").forward(request, response);
        //       try (PrintWriter out = response.getWriter()) {
        /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NewServlet1</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NewServlet1 at " + request.getContextPath() + "</h1>");
//            out.println("<h1>" + email + "</h1>");
//            out.println("<h1>" + fullName + "</h1>");
//            out.println("<h1>" + avatarLink + "</h1>");
//            out.println("<h1>" + password + "</h1>");
//            out.println("<h1>" + address + "</h1>");
//            out.println("<h1>" + phoneNumber + "</h1>");
//            out.println("<h1>" + creationDate + "</h1>");
//            out.println("<h1>" + status + "</h1>");
//            out.println("<h1>" + roleId + "</h1>");
//            out.println("<h1>"+ gender+"</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(editMyProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(editMyProfileController.class.getName()).log(Level.SEVERE, null, ex);
        }
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

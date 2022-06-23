/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.labdealers.lab2.categories;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yache
 */
public class CategoriesServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("page", "categories");
        ArrayList<Categorie> categories = new ArrayList<>();
        categories.add(new Categorie("Large appliances", "", "https://images.ua.prom.st/2042119892_w640_h640_velika-pobutova-tehnika.jpg"));
        categories.add(new Categorie("Fridges", "Large appliances", "https://files.foxtrot.com.ua/PhotoNew/img_0_142_5163_2.jpg"));
        categories.add(new Categorie("Computers", "", "https://komputers.com.ua/wp-content/uploads/2018/01/mnogo-PK.jpg"));
        categories.add(new Categorie("Laptops", "Computers", "https://www.ixbt.com/editorial/images/intel-dialogs/lots-of-ultrabooks.jpg"));
        categories.add(new Categorie("Desktop computers", "Computers", "https://thumbs.dreamstime.com/z/%D0%BA%D0%B8%D0%B5%D0%B2-%D1%83%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0-%D0%BE%D0%B5-%D0%B0%D0%BF%D1%80%D0%B5%D0%BB%D1%8F-%D0%BC%D0%BD%D0%BE%D0%B3%D0%BE-%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BE%D0%B2-%D0%B8%D0%B3%D1%80%D1%8B-%D0%BF%D0%BA-145430671.jpg"));
        
        String parent = request.getParameter("categorie");
        
        if (Objects.isNull(parent)) {
            for (Iterator<Categorie> iterator = categories.iterator(); iterator.hasNext();) {
                Categorie categorie = iterator.next();
                if (!"".equals(categorie.getParentName())) {
                    iterator.remove();
                }
            }
        } else {
            for (Iterator<Categorie> iterator = categories.iterator(); iterator.hasNext();) {
                Categorie categorie = iterator.next();
                if (!parent.equals(categorie.getParentName())) {
                    iterator.remove();
                }
            }
        }
        
        if (categories.isEmpty()) {
            response.sendRedirect("/lab2/goods?categorie="+parent);
        } else {
            request.setAttribute("categories", categories);
            RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
            rd.forward(request, response);
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

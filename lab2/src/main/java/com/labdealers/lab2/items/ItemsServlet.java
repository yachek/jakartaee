/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.labdealers.lab2.items;

import java.util.ArrayList;
import java.io.IOException;
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
public class ItemsServlet extends HttpServlet {

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
        
        request.setAttribute("page", "goods");
      
        ArrayList<Good> goods = new ArrayList<>();
        goods.add(new Good("https://cdn.comfy.ua/media/catalog/product/cache/4/image/600x/9df78eab33525d08d6e5fb8d27136e95/_/2/_263_wb_1_.jpg", "Vestfrost CX263WB", 7999, 6999, "The Vestfrost CX263WB refrigerator will help you take care of the freshness of products and preserve the maximum amount of useful vitamins and minerals in their composition. This is a small unit that is ideal for a small kitchen. It can also be installed in the country, where you do not visit so often, but sometimes you need such equipment.", "Fridges"));
        goods.add(new Good("https://cdn.comfy.ua/media/catalog/product/cache/4/image/600x/9df78eab33525d08d6e5fb8d27136e95/0/2/02_gw-b509smum_front_inverter_thinq.jpg", "LG GW-B509SMUM", 24999, 24999, "Оптимальная температура в зависимости от типа продукта. FRESHConverter представляет собой технологию, позволяющую выбирать оптимальный уровень температуры в зависимости от типа продукта, который сохраняется: мясо, рыба и овощи.", "Fridges"));
        goods.add(new Good("https://cdn.comfy.ua/media/catalog/product/cache/4/image/600x/9df78eab33525d08d6e5fb8d27136e95/i/9/i9400f_1_1_.jpg", "Expert PC Ultimate", 40499, 34999, "Processor Manufacturer: Intel\nCPU Model: Core i5-10400F\nNumber of cores: 6 cores\nCPU frequency: 2.9 (4.3) GHz\nChipset: Intel B460", "Desktop computers"));
        goods.add(new Good("https://cdn.comfy.ua/media/catalog/product/cache/4/image/600x/9df78eab33525d08d6e5fb8d27136e95/1/0/1088540_zoom_1_.jpg", "HP Laptop 15s-eq1042ua", 16499, 14999, "Screen Diagonal: 15.6''\nScreen Resolution: 1920x1080 Full HD\nMatrix type: IPS\nScreen Coating: Anti-Glare", "Laptops"));
        
        String categorie = request.getParameter("categorie");
       
        if (!Objects.isNull(categorie)) {
            for (Iterator<Good> iterator = goods.iterator(); iterator.hasNext();) {
                Good good = iterator.next();
                if (!good.getCategorie().equals(categorie)) {
                    iterator.remove();
                }
            }
        }
        
        String goodParameter = request.getParameter("good");
        
        if (!Objects.isNull(goodParameter)) {

            for (Iterator<Good> iterator = goods.iterator(); iterator.hasNext();) {
                Good good = iterator.next();
                if (!good.getName().equals(goodParameter)) {
                    iterator.remove();
                }
            }
        }
        
        request.setAttribute("goods", goods);
        
        System.out.println(request.getAttribute("page").equals("goods") && !Objects.isNull(request.getAttribute("categorie")));
        
        RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
        rd.forward(request, response);
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

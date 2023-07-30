/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Bird.BirdDAO;
import Bird.BirdDTO;
import Blog.BlogDAO;
import Blog.BlogDTO;
import Category.CategoryDAO;
import Category.CategoryDTO;
import Product.DAO;
import Product.DTO;
import User.UserDAO;
import User.UserDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;



@WebServlet(name = "ViewProductAdminPage", urlPatterns = {"/ViewProductAdminPage"})
public class ViewProductAdminPage extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            DAO dao = new DAO();
          

            List<DTO> list = dao.getProducts();
         
            //For Product
            int page, numperpage = 8;
            int size = list.size();
            int num = (size % 8 == 0 ? (size / 8) : (size / 8) + 1);
            String xpage = request.getParameter("ppage");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);
            List<DTO> listsp = dao.getListByPage(list, start, end);
            HttpSession session = request.getSession();
            session.setAttribute("page", page);
            session.setAttribute("num", num);
            session.setAttribute("Product", listsp);
         
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher("product-admin-page.jsp").forward(request, response);
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

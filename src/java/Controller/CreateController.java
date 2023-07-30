/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Product.DAO;
import Product.DTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;


@WebServlet(name = "CreateController", urlPatterns = {"/CreateController"})
public class CreateController extends HttpServlet {

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
        //  String url = "Add.jsp";
        try {
            String P_title = request.getParameter("title");
            String p_price = request.getParameter("price");
            String p_quantity = request.getParameter("quantity");
            String p_discount_price = request.getParameter("discount_price");
            String p_weight = request.getParameter("weight");
            String p_thumbnail = request.getParameter("thumbnail");
            String p_description = request.getParameter("description");
            String p_create_at = request.getParameter("create_at");
            String p_update_at = request.getParameter("update_at");
            String p_status = request.getParameter("status");
            String p_category_id = request.getParameter("category_id");

            DAO dao = new DAO();
            dao.InsertProduct(P_title, p_quantity, p_price, p_discount_price, p_weight, p_thumbnail, p_description, p_create_at, p_update_at, p_status, p_category_id);
            List<DTO> list =  dao.getProducts();
            HttpSession session = request.getSession();
            session.setAttribute("Product", list);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            response.sendRedirect("product-admin-page.jsp");
//            request.getRequestDispatcher("product-admin-page.jsp").forward(request, response);

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

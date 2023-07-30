/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Product.DTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import meal.MealPackageDAO;
import meal.MealPackageDTO;


@WebServlet(name = "CreateMealController", urlPatterns = {"/CreateMealController"})
public class CreateMealController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String title_mealpackage = request.getParameter("title_mealpackage");
            String quantity = request.getParameter("quantity");
            String price = request.getParameter("price");
            String discount_price = request.getParameter("discount_price");
            String thumbnail = request.getParameter("thumbnail");
            String description = request.getParameter("description");
            String recipe = request.getParameter("recipe");
            String create_at = request.getParameter("create_at");
            String update_at = request.getParameter("update_at");
            String status = request.getParameter("status");
            String bird_id = request.getParameter("bird_id");
            String lifecycle_id = request.getParameter("lifecycle_id");
            String img = request.getParameter("img");
            MealPackageDAO dao = new MealPackageDAO();
            
            dao.createMealPackage(title_mealpackage, quantity, price, discount_price, thumbnail, description, recipe, create_at, update_at, status, bird_id, lifecycle_id, img);
            
            HttpSession session = request.getSession();
            List<MealPackageDTO> list = dao.getMealPackages();
            session.setAttribute("MealPackage", list);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher("meals-admin-page.jsp").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(CreateMealController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(CreateMealController.class.getName()).log(Level.SEVERE, null, ex);
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

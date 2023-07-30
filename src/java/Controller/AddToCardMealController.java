/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Cart.Cart;
import Cart.CartDAO;
import Cart.CartItem;
import Product.DAO;
import Product.DTO;
import User.UserDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import meal.MealPackageDAO;
import meal.MealPackageDTO;


/**
 *
 * @author HP
 */
@WebServlet(name = "AddToCardMealController", urlPatterns = {"/AddToCardMealController"})
public class AddToCardMealController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddToCardMealController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCardMealController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       HttpSession session = request.getSession(true);
       if(session.getAttribute("LOGIN_USER")== null){
            response.sendRedirect("login-page.jsp");
        }else{
        Cart cart = null;
        Object o = session.getAttribute("cartmeal");
        
        if(o!=null){
            cart = (Cart)o;
        }else{
            cart = new Cart();
        }
        String tnum = request.getParameter("num");
        String tid = request.getParameter("meal_package_id");
        int num;
        String id;
        try {
            num = Integer.parseInt(tnum);
            id =tid;
            
            MealPackageDAO dao = new MealPackageDAO();
            MealPackageDTO m = dao.getMealPackageById(id);   
            double price = m.getPrice();
            CartItem t = new CartItem(num, price, m);
            cart.addItemMeal(t);
            CartDAO cartDao = new CartDAO();
            int product_id = 0;
            int meal_package_id = m.getMeal_package_id();
            UserDTO user_id = (UserDTO) session.getAttribute("LOGIN_USER");
             try {
                cartDao.addToCart(meal_package_id, product_id, user_id.getUserID() , num, price);
            } catch (SQLException ex) {
                Logger.getLogger(AddToCardController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (NumberFormatException e) {
            num = 1;
        }
        
        List<CartItem> listmeal = cart.getListCartItem();
        session.setAttribute("cartmeal", cart);
        session.setAttribute("size", listmeal.size());
        request.getRequestDispatcher("DetailMealController?meal_package_id=" + tid).forward(request, response);
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

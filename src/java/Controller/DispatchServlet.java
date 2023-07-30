/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DispatchServlet", urlPatterns = {"/DispatchServlet"})
public class DispatchServlet extends HttpServlet {

    private static final String ERROR = "err.jsp";

    private static final String LOGIN = "LoginController";
    private static final String VIEW_HOME_PAGE = "ViewController";
    private static final String DELETE_Product = "DeleteController";
    private static final String UPDATE = "UpdateController";
    private static final String CREATE = "create";
    private static final String VIEW_BLOG = "ViewBlogController";
    private static final String DELETE_BLOG = "DeleteBlogController";
    private static final String UPDATE_BLOG = "UpdateBlogController";
    private static final String UPDATE_PROFILE = "Update Profile";
    private static final String UPDATE_PROFILE_CONTROLLER = "UpdateProfileController";
    private static final String BACK_TO_HOME_PAGE = "Back";
    private final static String CHECKOUT = "Checkout";
    private final static String CHECKOUT_CONTROLLER = "CheckoutController";
    private final static String CREATE_PRODUCT_ADMIN = "CreateController";
    private final static String CREATE_BLOG_ADMIN = "CreateBlogController";
    private static final String DELETE_USER = "DeleteUserController";
    private static final String CREATE_USER = "CreateUserController";
    private static final String UPDATE_USER = "UpdateUserController";
    private static final String ADMIN_DELETE_MEAL = "DeleteMealController"; 
    private static final String ADMIN_CREATE_MEAL = "CreateMealController"; 
    private static final String ADMIN_UPDATE_MEAL = "UpdateMealController";
    private final static String CONFIRM = "Confirm";
    private final static String CONFIRM_CONTROLLER = "ConfirmController";

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
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = VIEW_HOME_PAGE;
            } else if (action.equals("Login")) {
                url = LOGIN;
            } else if (action.equals("Delete")) {
                url = DELETE_Product;
            } else if (action.equals("Update")) {
                url = UPDATE;
            } else if (action.equals("Create")) {
                url = CREATE;
            } else if (action.equals("View Blog")) {
                url = VIEW_BLOG;
            } else if (action.equals("Delete Blog")) {
                url = DELETE_BLOG;
            } else if (action.equals("Update Blog")) {
                url = UPDATE_BLOG;
            } else if (action.equals("Create Blog")) {
                url = CREATE_BLOG_ADMIN;
            }else if (action.equals("Delete Meal")){
                url = ADMIN_DELETE_MEAL;
            }else if (action.equals("Create Meal")){
                url = ADMIN_CREATE_MEAL;
            }else if (action.equals("Update Meal")){
                url = ADMIN_UPDATE_MEAL;
            }
            else if (action.equals("Update Profile")) {
                url = UPDATE_PROFILE_CONTROLLER;
            } else if (action.equals(BACK_TO_HOME_PAGE)) {
                url = VIEW_HOME_PAGE;
            } else if (CHECKOUT.equals(action)) {
                url = CHECKOUT_CONTROLLER;
            } else if (action.equals("Create Product")) {
                url = CREATE_PRODUCT_ADMIN;
            } else if (action.equals("Delete_User")) {
                url = DELETE_USER;
            } else if (action.equals("Create User")) {
                url = CREATE_USER;
            } else if (action.equals("Update User")) {
                url = UPDATE_USER;
            }
             else if (CONFIRM.equals(action)) {
                url = CONFIRM_CONTROLLER;
            }
//            your code here
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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

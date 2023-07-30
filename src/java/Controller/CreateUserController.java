/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import User.UserDAO;
import User.UserDTO;
import User.UserError;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@WebServlet(name = "CreateUserController", urlPatterns = {"/CreateUserController"})
public class CreateUserController extends HttpServlet {

    private static final String SUCCESS = "home.jsp";
    private static final String ERROR = "sign-up-page.jsp";

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
            UserDAO dao = new UserDAO();
            UserError userError = new UserError();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String phone_number = request.getParameter("phone_number");
            String address = request.getParameter("address");
            String status = request.getParameter("status");
            String role_id = request.getParameter("role_id");
            String confirm = request.getParameter("confirmpw");
            String us_pt = "^[a-zA-Z0-9_]{6,20}$";
//            String ps_pt = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@#$!%^&*()_+])[A-Za-z\\d@#$!%^&*()_+]{8,}$0";
            String ps_pt = "[a-zA-Z0-9_]{8,32}";
            String em_pt = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
            boolean checkValid = true;
            if (!username.matches(us_pt)) {
                userError.setUserNameError("Only letters and numbers are allowed, 6-20 characters!");
                checkValid = false;
            }
            if (!password.matches(ps_pt)) {
                userError.setPasswordError("Password needs 8-32 characters.");
                checkValid = false;
            }
            if (!confirm.equals(password)) {
                userError.setConfirmPsError("Password does not match!");
                checkValid = false;
            }
            if (!email.matches(em_pt)) {
                userError.setEmailError("Invalid Email!");
                checkValid = false;
            }
            if (dao.checkDublicate(username)) {
                userError.setUserNameError("Account already exists!");
                checkValid = false;
            }
            if (checkValid == false) {
                request.setAttribute("USER_ERROR", userError);
            } else {
                UserDTO user = new UserDTO(0, username, password, fullname, email, phone_number, address, status, role_id);
                boolean result = dao.InsertUser(username, password, fullname, email, phone_number, address, status, role_id);
                if (result) {
                    url = SUCCESS;
                } else {
                    request.setAttribute("USER_ERROR", userError);
                }
            }
        } catch (Exception e) {
            log("ERROR at CreateUserController: " + e.toString());

        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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

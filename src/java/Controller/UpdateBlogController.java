/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Blog.BlogDAO;
import Blog.BlogDTO;
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
import java.util.List;


@WebServlet(name = "UpdateBlogController", urlPatterns = {"/UpdateBlogController"})
public class UpdateBlogController extends HttpServlet {

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
            String blog_id = request.getParameter("blogid");
            BlogDAO dao = new BlogDAO();
            BlogDTO s = dao.getBlogtById(blog_id);
            request.setAttribute("bid", s);
            request.getRequestDispatcher("blog-admin-page.jsp").forward(request, response);

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
        try{
        String b_blog_id = request.getParameter("blog_id");
        String b_thumbnail = request.getParameter("thumbnail");
        String b_title = request.getParameter("title");
        String b_date_update = request.getParameter("date_update");
        String b_content = request.getParameter("content");
        String b_status = request.getParameter("status");
        String b_hashtag = request.getParameter("hashtag");

        BlogDAO dao = new BlogDAO();
        dao.updateBlog(b_blog_id, b_thumbnail, b_title, b_date_update, b_content, b_status, b_hashtag);
        List<BlogDTO> list_blog = dao.getBlog();
        HttpSession session = request.getSession();
        session.setAttribute("Blog", list_blog);
        }catch(Exception e){
            e.printStackTrace();
        }finally{
        request.getRequestDispatcher("blog-admin-page.jsp").forward(request, response);
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

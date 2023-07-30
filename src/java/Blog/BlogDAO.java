/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Blog;

import DBUtils.DBUtils;
import Product.DTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Thắng
 */
public class BlogDAO {

    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    public List<BlogDTO> getBlog() {
        List<BlogDTO> list = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_Blog";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BlogDTO p = new BlogDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getInt(9));
                list.add(p);
            }

        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        BlogDAO dao = new BlogDAO();
        List<BlogDTO> dto = dao.getBlog();
        System.out.println(dto);
//    DTO s =  dao.getProductById("1");
//        System.out.println(s);
//        List<BlogDTO> list = dao.getBlogByName("ào");
//        for (BlogDTO productDTO : list) {
//            System.out.println(productDTO);
//        }
//        System.out.println(dao.getBlogtById("4"));
    }

    public void delete_Blog(String blog_id) {

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "delete from tbl_Blog where blog_id= ?";
            stm = cn.prepareStatement(sql);
            stm.setString(1, blog_id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public BlogDTO getBlogtById(String blog_id) {
//        String sql = "select * from tbl_Product where product_id=?";
        try {
            String sql = "select * from tbl_Blog where blog_id=?";
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, blog_id);
            rs = stm.executeQuery();
            if (rs.next()) {
                BlogDTO b = new BlogDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getInt(9));
                return b;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void InsertBlog(String thumbnail, String title, String date_update, String content,
            String status, String hashtag) {
        String sql = "INSERT INTO [dbo].[tbl_Blog]\n"
                + "           ([thumbnail]\n"
                + "           ,[title]\n"
                + "           ,[date_update]\n"
                + "           ,[content]          \n"
                + "           ,[status]\n"
                + "           ,[hashtag])   "
                + "values(?,?,?,?,?,?)";
        try {
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, thumbnail);
            stm.setString(2, title);
            stm.setString(3, date_update);
            stm.setString(4, content);
            stm.setString(5, status);
            stm.setString(6, hashtag);

            stm.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void updateBlog(String blog_id, String thumbnail, String title, String date_update, String content,
            String status, String hashtag) {
        String sql = "UPDATE [tbl_Blog] SET [thumbnail] =? , [title] =? , [date_update] =? , [content] =? , [status] =? , [hashtag] =?  WHERE blog_id = ?";
        try {
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, thumbnail);
            stm.setString(2, title);
            stm.setString(3, date_update);
            stm.setString(4, content);
            stm.setString(5, status);
            stm.setString(6, hashtag);
            stm.setString(7, blog_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<BlogDTO> getBlogByName(String search) {
        List<BlogDTO> list = new ArrayList<>();
        String sql = "Select blog_id, thumbnail, title, date_update, content, description, status, hashtag, bird_id from tbl_Blog where title like ?";

        try {
            cn = new DBUtils().getConnection();
            if (cn != null) {
                stm = cn.prepareStatement(sql);
                stm.setString(1, "%" + search + "%");
                rs = stm.executeQuery();

                while (rs.next()) {
                    list.add(new BlogDTO(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDate(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getBoolean(7),
                            rs.getString(8),
                            rs.getInt(9)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<BlogDTO> getListByPage(List<BlogDTO> list, int start, int end) {
        ArrayList<BlogDTO> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<BlogDTO> getBlogByCategory(String category_id) {
        List<BlogDTO> list = new ArrayList<>();
        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_Blog where category_id = ?";
            PreparedStatement stm = cn.prepareStatement(sql);
            stm.setString(1, category_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BlogDTO p = new BlogDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bird;

import Blog.BlogDTO;
import DBUtils.DBUtils;
import Product.DTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import meal.MealPackageDTO;

/**
 *
 * @author 09047
 */
public class BirdDAO {

    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    public List<BirdDTO> getBird() {
        List<BirdDTO> list = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_Bird";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BirdDTO b = new BirdDTO(rs.getInt(1), rs.getString(2));
                list.add(b);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<BlogDTO> getBlogByBird(String bird_id) {
        List<BlogDTO> list_blog = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_Blog where bird_id = ?";
            PreparedStatement stm = cn.prepareStatement(sql);
            stm.setString(1, bird_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BlogDTO blog_dto = new BlogDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getString(8),
                        rs.getInt(9));
                list_blog.add(blog_dto);
            }
        } catch (Exception e) {
        }
        return list_blog;
    }

    public List<MealPackageDTO> getMealPackageByBird(String bird_id) {
        List<MealPackageDTO> list_mp = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_MealPackage where bird_id = ?";
            PreparedStatement stm = cn.prepareStatement(sql);
            stm.setString(1, bird_id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MealPackageDTO mp_dto = new MealPackageDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getBoolean(11),
                        rs.getInt(12),
                        rs.getInt(13),
                        rs.getString(14));
                list_mp.add(mp_dto);
            }
        } catch (Exception e) {
        }
        return list_mp;
    }

    public static void main(String[] args) {
        BirdDAO dao = new BirdDAO();
        List<BirdDTO> list = dao.getBird();
        for (BirdDTO birdDTO : list) {
            System.out.println(birdDTO);
        }
    }

}

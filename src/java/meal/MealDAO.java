/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package meal;

import DBUtils.DBUtils;
import Product.DTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Asus
 */
public class MealDAO {

    private DBUtils db;

    public MealDAO() {
        db = new DBUtils();
    }

    public MealDAO(DBUtils db) {
        this.db = db;
    }

    public DBUtils getDb() {
        return db;
    }

    public void setDb(DBUtils db) {
        this.db = db;
    }

    public List<MealDTO> readAllMealPackage() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<MealDTO> listM = new ArrayList<>();

        try {
            String sql = "SELECT  tbl_MealPackage.title_mealpackage, tbl_MealPackage.price,tbl_MealPackage.description,tbl_MealPackage.thumbnail,tbl_MealPackage.discount_price ,tbl_Product.[title]\n"
                    + "FROM tbl_Meal\n"
                    + "JOIN tbl_MealPackage ON tbl_Meal.meal_package_id = tbl_MealPackage.meal_package_id\n"
                    + "JOIN tbl_Product ON tbl_Meal.product_id = tbl_Product.product_id;";
            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String title = rs.getString("title_mealpackage");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String thumbnail = rs.getString("thumbnail");
                int discount_price = rs.getInt("discount_price");
                String title_product = rs.getString("title");
                MealDTO mp = new MealDTO(title, price, description, thumbnail, discount_price, title_product);
                listM.add(mp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listM;
    }

    public void updateMealPackage(String meal_package_id, String meal_code, String title, String quantity,
            String price, String discount_price, String weight, String thumbnail, String description, String create_at,
            String update_at, String status, String bird_id, String lifecycle_id) {

        try {
            String sql;
            sql = "UPDATE tbl_MealPackage\n"
                    + "SET [meal_code] = ?,\n"
                    + "    [title] = ?,\n"
                    + "    [quantity] = ?,\n"
                    + "    [price] = ?,\n"
                    + "    [discount_price] = ?,\n"
                    + "    [weight] = ?,\n"
                    + "    [thumbnail] = ?,\n"
                    + "    [description] = ?,\n"
                    + "    [create_at] = ?,\n"
                    + "    [update_at] = ?,\n"
                    + "    [status] = ?,\n"
                    + "    [bird_id] = ?,\n"
                    + "    [lifecycle_id] = ?\n"
                    + "WHERE meal_package_id = ?;";

            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, meal_code);
            stmt.setString(2, title);
            stmt.setString(3, quantity);
            stmt.setString(3, price);
            stmt.setString(3, discount_price);
            stmt.setString(3, weight);
            stmt.setString(3, thumbnail);
            stmt.setString(3, description);
            stmt.setString(3, create_at);
            stmt.setString(3, update_at);
            stmt.setString(3, status);
            stmt.setString(3, bird_id);
            stmt.setString(3, lifecycle_id);
            stmt.setString(3, meal_package_id);

            stmt.executeUpdate();

        } catch (Exception e) {
        }
    }

    public boolean createMealPackage(String meal_code, String title_mealpackage, int quantity,
            int price, int discount_price, String thumbnail, String description, String create_at,
            String update_at) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "INSERT INTO tbl_MealPackage ([meal_code], [title_mealpackage], [quantity], [price], [discount_price], [thumbnail], [description], [create_at], [update_at], [status]) values(?,?,?,?,?,?,?,?,?,?)";

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                PreparedStatement stmt = db.getConnection().prepareStatement(sql);
                stmt.setString(1, meal_code);
                stmt.setString(2, title_mealpackage);
                stmt.setInt(3, quantity);
                stmt.setInt(4, price);
                stmt.setInt(5, discount_price);
                stmt.setString(6, thumbnail);
                stmt.setString(7, description);
                stmt.setString(8, create_at);
                stmt.setString(9, update_at);
                stmt.setString(10, "1");
                check = stmt.executeUpdate() > 0 ? true : false;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return check;

    }

    public void deleteMealPackage(String meal_package_id) {

        try {

            String sql;
            sql = "delete from tbl_MealPackage where meal_package_id=?";

            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, meal_package_id);
            stmt.executeUpdate();

        } catch (Exception e) {
        }
    }

    public MealPackageDTO detailsMealPackage(String meal_package_id) {
        try {
            String sql = "select * from tbl_MealPackage where meal_package_id=?";
            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, meal_package_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return new MealPackageDTO(rs.getInt(1),
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
            }
        } catch (Exception e) {
        }

        return null;
    }

    public boolean createMeal(int quantity, int meal_package_id, int product_id) {
        try {
            String sql = "INSERT INTO tbl_Meal ([meal_package_id], [product_id], [quantity])\n"
                    + "VALUES (?, ?, ?)";
            PreparedStatement stm = db.getConnection().prepareStatement(sql);
            stm.setInt(1, quantity);
            stm.setInt(2, meal_package_id);
            stm.setInt(3, product_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    public List<Meal> ViewMeal() {
        List<Meal> list = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_Meal";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Meal p = new Meal(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3));
                list.add(p);
            }

        } catch (Exception e) {
        }
        return list;
    }

    public void deleteMeal(String meal_package_id) {

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "delete from tbl_Meal where meal_package_id= ?";
            stm = cn.prepareStatement(sql);
            stm.setString(1, meal_package_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateMeal(int quantity, int meal_package_id, int product_id) {
        String sql = "UPDATE [dbo].[tbl_Meal]\n"
                + "   SET [quantity] = \n"
                + "      ,[meal_package_id] =\n"
                + "      ,[product_id] = \n"
                + "      ,[description] = \n"
                + " WHERE meal_package_id =";
        try {
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        MealDAO dao = new MealDAO();
        List<Meal> listM = dao.ViewMeal();
        for (Meal mealDTO : listM) {
            System.out.println(mealDTO);
        }
    }
}

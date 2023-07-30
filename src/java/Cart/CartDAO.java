/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Cart;

import DBUtils.DBUtils;
import jakarta.servlet.http.HttpSession;
import java.net.Authenticator;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.catalina.Globals;

/**
 *
 * @author Giang Hoang
 */
public class CartDAO {

    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    private static final String INSERT = "INSERT INTO Cart ([meal_package_id], [product_id], [user_id], [quantity], [price])\n"
            + "VALUES (?, ?, ?, ?, ?)";

    public void addToCart(int meal_package_id, int product_id, int user_id, int num, double price) throws SQLException {
        try {
            String sql = INSERT;
            cn = DBUtils.getConnection();
            if (cn != null) {
                cn = (Connection) DBUtils.getConnection();
                stm = cn.prepareStatement(sql);
                if (meal_package_id != 0) {
                    stm.setInt(1, meal_package_id);
                } else {
                    stm.setString(1, null);
                }
                if (product_id != 0) {
                    stm.setInt(2, product_id);
                } else {
                    stm.setString(2, null);
                }
                stm.setInt(3, user_id);
                stm.setInt(4, num);
                stm.setDouble(5, price);
                stm.executeUpdate();
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (cn != null) {
                cn.close();
            }
        }

    }

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Order;

import Blog.BlogDTO;
import Cart.Cart;
import Cart.CartItem;
import DBUtils.DBUtils;
import User.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Asus
 */
public class OrderDAO {

    private static final String SHOW = "select * from tbl_Order";
    private static final String SHOW2 = "select * from tbl_Order";
    private static final String UPDATE = "UPDATE tbl_Order SET status='true' WHERE order_id=?";
    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    public void addOrder(UserDTO u, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        int status = 0;
        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "insert into tbl_Order([order_date],[user_id],[totalMoney],[status]) values(?,?,?,?)";
            PreparedStatement stm = cn.prepareStatement(sql);
            stm.setString(1, date);
            stm.setInt(2, u.getUserID());
            stm.setDouble(3, cart.getTotalMoney());
            stm.setInt(4, status);
            stm.executeUpdate();

            String sql1 = "select top 1 order_id from tbl_Order order by order_id desc";
            stm = cn.prepareStatement(sql1);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (CartItem i : cart.getListCartItem()) {
                    String sql2 = "insert into tbl_OrderDetail([oder_id],[product_id],[quantity],[price],[meal_package_id]) values (?,?,?,?,?)";
                    stm = cn.prepareStatement(sql2);
                    stm.setInt(1, oid);
                    if (i.getProduct() !=null) {
                        stm.setInt(2, i.getProduct().getProduct_id());
                    } else {
                        stm.setString(2, null);
                    }
                    stm.setInt(3, i.getQuantity());
                    stm.setDouble(4, i.getPrice());
                    if (i.getMealpackagedto() != null) {
                        stm.setInt(5, i.getMealpackagedto().getMeal_package_id());
                    } else {
                        stm.setString(5, null);
                    }
                    stm.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<OrderDTO> getAllOrder() {
        List<OrderDTO> list = new ArrayList<>();
        try {
            cn = DBUtils.getConnection();
            String sql = "select * from tbl_Order";
            stm = cn.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                OrderDTO order = new OrderDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7));
                list.add(order);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDTO> getOrderById(String id) {
        List<OrderDTO> list = new ArrayList<>();
        try {
            cn = DBUtils.getConnection();
            String sql = "select * from tbl_Order where user_id=?";
            stm = cn.prepareStatement(sql);
            stm.setString(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                OrderDTO order = new OrderDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getInt(7));
                list.add(order);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        List<OrderDTO> list = dao.getOrderById("3");
        for (OrderDTO orderDTO : list) {
            System.out.println(orderDTO);
        }
    }

    public List<OrderDTO> getListOrder() throws SQLException {
        List<OrderDTO> listOrder = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(SHOW);
            rs = ptm.executeQuery();
            while (rs.next()) {
                int order_id = rs.getInt("order_id");
                String order_code = rs.getString("order_code");
                Date order_date = rs.getDate("order_date");
                String note = rs.getString("note");
                double totalmoney = rs.getDouble("totalmoney");
                int status = rs.getInt("status");
                int user_id = rs.getInt("user_id");
                if (status == 0) {
                    listOrder.add(new OrderDTO(order_id, order_code, order_date, note, totalmoney, status, user_id));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listOrder;
    }

    public List<OrderDTO> getListByPage(List<OrderDTO> list, int start, int end) {
        ArrayList<OrderDTO> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public boolean updateStatus(String id) throws SQLException {
        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(UPDATE);
                ptm.setString(1, id);
                checkUpdate = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkUpdate;
    }

    public List<OrderDetail> getOrderDetailById(String id) {
        List<OrderDetail> list = new ArrayList<>();
        try {
            cn = DBUtils.getConnection();
            String sql = "select  tbl_OrderDetail.*, tbl_Product.title, tbl_Product.thumbnail\n"
                    + "from tbl_OrderDetail \n"
                    + "JOIN tbl_Product ON tbl_OrderDetail.product_id = tbl_Product.product_id\n"
                    + "where tbl_OrderDetail.oder_id = ?";
            stm = cn.prepareStatement(sql);
            stm.setString(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
                OrderDetail order = new OrderDetail(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7));
                list.add(order);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<OrderDTO> getListOrderAD() throws SQLException {
        List<OrderDTO> listOrder = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(SHOW2);
            rs = ptm.executeQuery();
            while (rs.next()) {
                int order_id = rs.getInt("order_id");
                String order_code = rs.getString("order_code");
                Date order_date = rs.getDate("order_date");
                String note = rs.getString("note");
                double totalmoney = rs.getDouble("totalmoney");
                int status = rs.getInt("status");
                int user_id = rs.getInt("user_id");
                if (status == 1) {
                    listOrder.add(new OrderDTO(order_id, order_code, order_date, note, totalmoney, status, user_id));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listOrder;
    }
}

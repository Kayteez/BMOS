package User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import DBUtils.DBUtils;
import User.UserDTO;
import java.util.List;
import java.util.ArrayList;
import javax.naming.NamingException;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author 09047
 */
public class UserDAO {
    
    private static final String CHECK_EXIST = "SELECT username FROM tbl_User WHERE username=?";

    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;

    public List<UserDTO> getUsers() {
        List<UserDTO> list = new ArrayList<>();

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_User where role_id = 2 or role_id = 3";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                UserDTO u = new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                list.add(u);
            }

        } catch (Exception e) {
        }
        return list;
    }

    public boolean InsertUser(String username, String password, String fullname, String email, String phone_number,
            String address, String status, String role_id) {
        String sql = "INSERT INTO [dbo].[tbl_User] \n"
                + "(username, password, fullname, email, \n"
                + "phone_number, address, status, role_id) \n"
                + "VALUES (?,?,?,?,?,?,?,?)";

        try {
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, "Customer");
            stm.setString(4, email);
            stm.setString(5, phone_number);
            stm.setString(6, address);
            stm.setString(7, status);
            stm.setString(8, "3");

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public void deleteUser(String user_id) {

        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "delete from tbl_User where user_id= ?";
            stm = cn.prepareStatement(sql);
            stm.setString(1, user_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public UserDTO getUserById(String user_id) {
//        String sql = "select * from tbl_Product where product_id=?";
        try {
            String sql = "select * from tbl_User where user_id=?";
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, user_id);
            rs = stm.executeQuery();
            if (rs.next()) {
                UserDTO p = new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                return p;
            }

        } catch (Exception e) {
        }
        return null;
    }

    public void updateUser(String user_id, String username, String password, String fullname, String email, String phone_number,
            String address, String status, String role_id) {
        String sql = "UPDATE [tbl_User]  SET [username] =? , [password] =? , [fullname] =?  , [email] =?  , [phone_number] =?   ,  [address] =? , [status] =? , [role_id] = ?  WHERE user_id = ? ";
        try {
            cn = (Connection) DBUtils.getConnection();
            stm = cn.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            stm.setString(3, fullname);
            stm.setString(4, email);
            stm.setString(5, phone_number);
            stm.setString(6, address);
            stm.setString(7, status);
            stm.setString(8, role_id);
            stm.setString(9, user_id);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public UserDTO checkLogin(String username, String password) throws SQLException {
        UserDTO loginUser = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tbl_User WHERE username=? AND password= ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, username);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    return new UserDTO(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getString(8),
                            rs.getString(9));
                }
            }

        } catch (Exception e) {
        }
        return null;
    }

    public boolean updateProfile(UserDTO updateUser) throws SQLException {
        boolean checkUpdate = false;
        Connection cn = null;
        PreparedStatement stm = null;
        try {
            cn = DBUtils.getConnection();
            if (cn != null) {
                stm = cn.prepareStatement("UPDATE tbl_User SET  password = ?, fullname = ?, email = ?, phone_number = ?, address = ?  where user_id= ? ");
                stm.setString(1, updateUser.getPassword());
                stm.setString(2, updateUser.getFullname());
                stm.setString(3, updateUser.getEmail());
                stm.setString(4, updateUser.getPhone());
                stm.setString(5, updateUser.getAddress());
                stm.setInt(6, updateUser.getUserID());
                checkUpdate = stm.executeUpdate() > 0 ? true : false;
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
        return checkUpdate;

    }

    public List<UserDTO> getListByPage(List<UserDTO> list, int start, int end) {
        ArrayList<UserDTO> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public boolean checkDublicate(String username) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(CHECK_EXIST);
            ptm.setString(1, username);
            rs = ptm.executeQuery();
            if (rs.next()) {
                check = true;
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
        return check;
    }

    public static void main(String[] args) throws SQLException {
        UserDAO user = new UserDAO();
        user.checkLogin("admin", "1");
        System.out.println(user);
    }
}

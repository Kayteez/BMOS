/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Category;

import DBUtils.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class CategoryDAO {

    private DBUtils db;

    public CategoryDAO() {
        db = new DBUtils();
    }

    public CategoryDAO(DBUtils db) {
        this.db = db;
    }

    public DBUtils getDb() {
        return db;
    }

    public void setDb(DBUtils db) {
        this.db = db;
    }

    public List<CategoryDTO> readAllCategory() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        List<CategoryDTO> listCategory = new ArrayList<>();

        try {
            String sql = "SELECT * FROM tbl_Category";
            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int category_id = rs.getInt("category_id");
                String category_name = rs.getString("name"); 
                boolean status = rs.getBoolean("status");
                String img = rs.getString("img");
                CategoryDTO item = new CategoryDTO(category_id, category_name, status, img);
                listCategory.add(item);
            }
        } catch (Exception e) {
        }

        return listCategory;
    }
    

    public void updateCategory(String category_id, String name, String status) {

        try {
            String sql;
            sql = "update tbl_Category \n"
                    + "set [name] = ?, \n"
                    + "[status] = ? \n"
                    + "where category_id = ?";

            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, status);
            stmt.setString(3, category_id);

            stmt.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void createCategory(String name, String status) {

        try {
            String sql;
            sql = "insert into tbl_Category values(?,?)";

            PreparedStatement stmt = db.getConnection().prepareStatement(sql);

            stmt.setString(1, name);
            stmt.setString(2, status);

            stmt.executeUpdate();

        } catch (Exception e) {

        }
    }

    public void deleteCategory(String category_id) {

        try {

            String sql;
            sql = "delete from tbl_Category where category_id=?";

            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, category_id);
            stmt.executeUpdate();

        } catch (Exception e) {
        }
    }

    public CategoryDTO detailsCategory(String category_id) {
        try {
            String sql = "select * from tbl_Category where category_id=?";
            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            stmt.setString(1, category_id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return new CategoryDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getBoolean(3),
                        rs.getString(4));
            }
        } catch (Exception e) {
        }

        return null;
    }
    
    public int getTotalCategory(){       
        try {
            String sql = "select count(*) from tbl_Category";
            PreparedStatement stmt = db.getConnection().prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List <CategoryDTO> list = dao.readAllCategory();
        for (CategoryDTO c : list) {
            System.out.println(c);
        }
        int count = dao.getTotalCategory();
        System.out.println(count);
        }
}

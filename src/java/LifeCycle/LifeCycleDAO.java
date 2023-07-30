/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LifeCycle;

import DBUtils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 09047
 */
public class LifeCycleDAO {
    Connection cn = null;
    ResultSet rs = null;
    PreparedStatement stm = null;
    
    public List<LifeCycleDTO> getLifeCycle(){
        List<LifeCycleDTO> list = new ArrayList<>();
        try {
            cn = (Connection) DBUtils.getConnection();
            String sql = "select * from tbl_LifeCycle";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                LifeCycleDTO l = new LifeCycleDTO(rs.getInt(1), rs.getString(2));
                list.add(l);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        LifeCycleDAO dao = new LifeCycleDAO();
        List<LifeCycleDTO> list = dao.getLifeCycle();
        for (LifeCycleDTO lifeDTO : list) {
            System.out.println(lifeDTO);
        }
    }
}

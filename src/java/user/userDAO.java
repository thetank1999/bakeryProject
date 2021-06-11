/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import database.dBContext;
import database.dBContext;
import category.categoryDTO;
import product.productDTO;
import user.userDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author theta
 */
public class userDAO {
     Connection conn = null; // connect to sql Server
    PreparedStatement ps = null;// execute SQL query
    ResultSet rs = null;// return data
    public userDTO login(String userName, String passWord) {
        String query = "select * from [user]\n"
                + "where [email]= ?\n"
                + "and [password]= ?";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new userDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<userDTO> getAllUser() {
        List<userDTO> list = new ArrayList<>();
        String query = "select * from [user]";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new userDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}

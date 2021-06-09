/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import database.dBContext;
import dto.categoryDTO;
import dto.productDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author theta
 */
public class dao {

    Connection conn = null; // connect to sql Server
    PreparedStatement ps = null;// execute SQL query
    ResultSet rs = null;// return data

    public List<productDTO> getAllProduct() {
        List<productDTO> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new productDTO(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getBoolean(8),
                        rs.getInt(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<categoryDTO> getAllCategory() {
        List<categoryDTO> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new categoryDTO(
                        rs.getString(1), 
                        rs.getString(2), 
                        rs.getString(3)));
            }
        } catch (Exception e) {

        }
        return list;
    }

//    public static void main(String[] args) {
//        dao dao= new dao();
//        List<categoryDTO> list = dao.getAllCategory();
//        for (categoryDTO p : list){
//            System.out.println(p);
//        }
//    }
}

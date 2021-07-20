/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package post;

import database.dBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author theta
 */
public class postDAO {

    Connection conn = null; // connect to sql Server
    PreparedStatement ps = null;// execute SQL query
    ResultSet rs = null;// return data

    public int getMaxPagesBy6ByPost() {
        String query = "select count(*) from [Post]";

        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 6;
                if (total % 6 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<postDTO> getPostBy6(int index) {
        List<postDTO> list = new ArrayList<>();
        String query = "select * from [Post]\n"
                + "order by [Id]\n"
                + "offset ? rows\n"
                + "fetch first 6 rows only";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new postDTO(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getDate(10)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public postDTO getPostByID(int id) {
        String query = "select * from [Post]\n"
                + "where id=?";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new postDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5),
                        rs.getBoolean(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getBoolean(9),
                        rs.getDate(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        postDAO dao = new postDAO();
        System.out.println(dao.getMaxPagesBy6ByPost());
        System.out.println(dao.getPostBy6(1));
        System.out.println(dao.getPostByID(1));
    }
}

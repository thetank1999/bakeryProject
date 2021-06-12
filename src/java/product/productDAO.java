/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package product;

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
public class productDAO {

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
                        rs.getInt(1), //id
                        rs.getString(2), // name
                        rs.getString(3), // cateID
                        rs.getString(4), //thumbnail
                        rs.getString(5), //uploader
                        rs.getInt(6), // lowerPrice
                        rs.getInt(7), // higherPrice
                        rs.getString(8), // detail
                        rs.getBoolean(9), // status
                        rs.getBoolean(10),// saleStatus
                        rs.getInt(11) // stock
                ));

            }
        } catch (Exception e) {

        }
        return list;
    }

    public void deleteProduct(int pID) {
        String query = "delete from [product]\n"
                + "where id = ?";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pID);
            //rs = ps.executeQuery();
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<productDTO> getAllProductByCateID(String cateID) {
        List<productDTO> list = new ArrayList<>();
        String query = "select * from Product \n"
                + "where CategoryId=?";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cateID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new productDTO(
                        rs.getInt(1), //id
                        rs.getString(2), // name
                        rs.getString(3), // cateID
                        rs.getString(4), //thumbnail
                        rs.getString(5), //uploader
                        rs.getInt(6), // lowerPrice
                        rs.getInt(7), // higherPrice
                        rs.getString(8), // detail
                        rs.getBoolean(9), // status
                        rs.getBoolean(10),// saleStatus
                        rs.getInt(11) // stock
                ));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public productDTO getLastestProduct() {
        String query = "select top 1 * from Product\n"
                + "order by product.Id desc";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new productDTO(
                        rs.getInt(1), //id
                        rs.getString(2), // name
                        rs.getString(3), // cateID
                        rs.getString(4), //thumbnail
                        rs.getString(5), //uploader
                        rs.getInt(6), // lowerPrice
                        rs.getInt(7), // higherPrice
                        rs.getString(8), // detail
                        rs.getBoolean(9), // status
                        rs.getBoolean(10),// saleStatus
                        rs.getInt(11) // stock
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public productDTO getProductByID(int pID) {
        String query = "select * from Product \n"
                + "where id=?";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new productDTO(
                        rs.getInt(1), //id
                        rs.getString(2), // name
                        rs.getString(3), // cateID
                        rs.getString(4), //thumbnail
                        rs.getString(5), //uploader
                        rs.getInt(6), // lowerPrice
                        rs.getInt(7), // higherPrice
                        rs.getString(8), // detail
                        rs.getBoolean(9), // status
                        rs.getBoolean(10),// saleStatus
                        rs.getInt(11) // stock
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
}

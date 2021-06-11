/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import database.dBContext;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
//import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static user.validation.encryptPassword;
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
    public boolean getUserExistency(String email){
        String query = "select * from [user]\n"
                + "where [email]= ?\n";
        userDTO u = new userDTO();
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                u= new userDTO(
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
                
                if (u!= null)
                    return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    
    public void signUp(String email, String password, String address, String fullName, String phoneNumber, String gender) throws NoSuchAlgorithmException{
        // String email, String passwor, String address, String fullName, String phoneNumber, String gender, Date date 
        String encryptedPass = encryptPassword(password);
        long millis=System.currentTimeMillis();   
        java.sql.Date date=new java.sql.Date(millis);
        String query = "insert into [user]\n"
                + "values(?, ?, ? , ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new dBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, encryptedPass);
            ps.setString(3, null);
            ps.setString(4, address);
            ps.setString(5, fullName);
            ps.setString(6, phoneNumber);
            ps.setString(7, gender);
            ps.setDate(8, date);
            ps.setInt(9, 1);
            ps.setString(10, "us");
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
    
//    public static void main(String[] args) {
//        String a = "admin@fpt.edu.vn";
//        userDAO dao = new userDAO();
//        System.out.println(dao.getUserExistency(a));
//    }
    
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

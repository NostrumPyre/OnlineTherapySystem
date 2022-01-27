/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rhyth
 */
public class Admin {

    private int adminid;
    private String name;
    private String email;
    private String password;
    private String phone;

    public Admin() {
    }

    public Admin(int adminid, String name, String email, String password, String phone) {
        this.adminid = adminid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public int getAdminid() {
        return adminid;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public ArrayList<Admin> getAllAdminData() {
       Connection conn;
       ArrayList<Admin> adminList = new ArrayList<>();

        try {
            String SQL = "SELECT * FROM ADMIN";
            conn = DBConnection.openConnection();
            Statement stmt = conn.createStatement();
        
           ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                Admin p = new Admin();
                
                p.setAdminid(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPassword(rs.getString("password"));
                p.setPhone(rs.getString("phone"));
                
                adminList.add(p);
            }

        } catch (Exception e) {
        }

        return adminList;

    }
    
  

    public void deleteAdminData(int adminid) {
        Connection conn;
        PreparedStatement ps;

        try {
            String sqldelete = "DELETE FROM admin WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(sqldelete);
            ps.setInt(1, adminid);
            ps.executeUpdate();

        } catch (Exception e) {}
    }
    
    

    public void addAdmin(String name, String email, String pass, String phone) {
        Connection conn;
        PreparedStatement ps;
        try {
            String SQL = "INSERT INTO ADMIN(name, email,password,phone)VALUES(?,?,?,?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, phone);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

}

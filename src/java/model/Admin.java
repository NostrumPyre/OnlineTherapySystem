/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

    public Admin(int adminid, String name, String email, String password, String phone, Connection conn, PreparedStatement ps, ResultSet rs) {
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
    
       

    public Admin getAdminData(int id) {
          Connection conn;
          PreparedStatement ps;
          ResultSet rs;   
      
          Admin p = new Admin();

        try {
            String SQL = "SELECT * FROM admin WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                p.setAdminid(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPassword(rs.getString("password"));
                p.setPhone(rs.getString("phone"));
            }

        } catch (Exception e) {
        }

        return p;

    }

    public void deleteAdminData(int id) {
        Connection conn;
          PreparedStatement ps;
          
        try {
            String sqldelete = "DELETE FROM admin WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(sqldelete);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    
}

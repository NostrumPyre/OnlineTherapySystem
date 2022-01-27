/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author rhyth
 */
public class Therapist {
    
    private int therapistid;
    private String name;
    private String email;
    private String password;
    private Date dob;
    private String gender;
    private String address;
    private String phone;
    private boolean availability;

    public Therapist() {
    }

    public Therapist(int therapistid, String name, String email, String password, Date dob, String gender, String address, String phone, boolean availability) {
        this.therapistid = therapistid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.availability = availability;
    }

    public int getTherapistid() {
        return therapistid;
    }

    public void setTherapistid(int therapistid) {
        this.therapistid = therapistid;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isAvailability() {
        return availability;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }
    
    
    public Therapist getTherapist(int id) {
        Connection conn;
        PreparedStatement ps;
        ResultSet rs;

        Therapist p = new Therapist();

        try {
            String SQL = "SELECT * FROM therapist WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                p.setTherapistid(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPassword(rs.getString("password"));
                p.setPhone(rs.getString("phone"));
                p.setDob(rs.getDate("dob"));
                p.setGender(rs.getString("gender"));
                p.setAddress(rs.getString("address"));
                p.setAvailability(rs.getBoolean("availability"));
            }

        } catch (Exception e) {
        }

        return p;

    }
    
    
    public ArrayList<Therapist> getAllTherapist() {
      Connection conn;
      ArrayList<Therapist> therapistList = new ArrayList<>();
      
      try{
          String SQL = "SELECT * FROM THERAPIST";
          conn = DBConnection.openConnection();
          Statement stmt = conn.createStatement();
        
          ResultSet rs = stmt.executeQuery(SQL);
          
          while(rs.next()){
              Therapist p = new Therapist();
              
              p.setTherapistid(rs.getInt("id"));
              p.setName(rs.getString("name"));
              p.setEmail(rs.getString("email"));
              p.setPassword(rs.getString("password"));
              p.setPhone(rs.getString("phone"));
              p.setDob(rs.getDate("dob"));
              p.setGender(rs.getString("gender"));
              p.setAddress(rs.getString("address"));
              p.setAvailability(rs.getBoolean("availability"));
              
              therapistList.add(p);    
          }    
      }catch(Exception e){}
      
      return therapistList;
    }
    
    
    

    public void deleteTherapist(int id) {
        Connection conn;
        PreparedStatement ps;

        try {
            String sqldelete = "DELETE FROM therapist WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(sqldelete);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void addTherapist(String name, String email, String password, Date dob, String gender, String address, String phone) {
        Connection conn;
        PreparedStatement ps;
        try {
            String SQL = "INSERT INTO therapist(name, email,password,dob,gender,address,phone)VALUES(?,?,?,?,?,?,?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setDate(4, dob);
            ps.setString(5, gender);
            ps.setString(6, address);
            ps.setString(7, phone);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author rhyth
 */
public class Report {
    
    private int reportid;
    private int appointmentid;
    private String result;
    private Date date;

    public Report() {
    }

    public Report(int reportid, int appointmentid, String result, Date date) {
        this.reportid = reportid;
        this.appointmentid = appointmentid;
        this.result = result;
        this.date = date;
    }

    public int getReportid() {
        return reportid;
    }

    public void setReportid(int reportid) {
        this.reportid = reportid;
    }

    public int getAppointmentid() {
        return appointmentid;
    }

    public void setAppointmentid(int appointmentid) {
        this.appointmentid = appointmentid;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    public void addReport(int appointment_id,String result,Date date) {
    Connection conn;
    PreparedStatement ps;
      try{
          String SQL = "INSERT INTO REPORT(appointment_id, result,date)VALUES(?,?,?)";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setInt(1, appointment_id);
          ps.setString(2, result);
          ps.setDate(3, date);
          ps.executeUpdate();
          
      }catch(Exception e){}  
    }
    
    public Report getReport(int id) {
      Connection conn;
      PreparedStatement ps;
      ResultSet rs;   
      Report r = new Report();
      
      try{
          String SQL = "SELECT * FROM REPORT WHERE id=?";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setInt(1, id);
          rs = ps.executeQuery();
       
          while(rs.next())
          {
              r.setReportid(rs.getInt("id"));
              r.setAppointmentid(rs.getInt("appointment_id"));
              r.setResult(rs.getString("result"));
              r.setDate(rs.getDate("date"));
          }
          
      }catch(Exception e){}
      
      return r;
        
    }
    
    public ArrayList<Report> getAllReport() {
      Connection conn;
      ArrayList<Report> reportList = new ArrayList<>();
      
      try{
          String SQL = "SELECT * FROM REPORT";
          conn = DBConnection.openConnection();
          Statement stmt = conn.createStatement();
        
          ResultSet rs = stmt.executeQuery(SQL);
          
          while(rs.next()){
              Report r = new Report();
              
               r.setReportid(rs.getInt("id"));
               r.setAppointmentid(rs.getInt("appointment_id"));
               r.setResult(rs.getString("result"));
               r.setDate(rs.getDate("date"));
              
              reportList.add(r);    
          }    
      }catch(Exception e){}
      
      return reportList;
    }
    
}

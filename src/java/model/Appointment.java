/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rhyth
 */
public class Appointment {
    
    private int appointmentid;
    private int patientid;
    private int therapistid;
    private int status;
    private String date;
    private String time_from;
    private String time_to;

    public Appointment() {
    }

    public Appointment(int appointmentid, int patientid, int therapistid, int status, String date, String time_from, String time_to) {
        this.appointmentid = appointmentid;
        this.patientid = patientid;
        this.therapistid = therapistid;
        this.status = status;
        this.date = date;
        this.time_from = time_from;
        this.time_to = time_to;
    }

    public int getAppointmentid() {
        return appointmentid;
    }

    public void setAppointmentid(int appointmentid) {
        this.appointmentid = appointmentid;
    }

    public int getPatientid() {
        return patientid;
    }

    public void setPatientid(int patientid) {
        this.patientid = patientid;
    }

    public int getTherapistid() {
        return therapistid;
    }

    public void setTherapistid(int therapistid) {
        this.therapistid = therapistid;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime_from() {
        return time_from;
    }

    public void setTime_from(String time_from) {
        this.time_from = time_from;
    }

    public String getTime_to() {
        return time_to;
    }

    public void setTime_to(String time_to) {
        this.time_to = time_to;
    }
    
    
    public Appointment getAppointment(int id) {
          Connection conn;
          PreparedStatement ps;
          ResultSet rs;   
      
          Appointment p = new Appointment();

        try {
            String SQL = "SELECT * FROM appointment WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                p.setAppointmentid(rs.getInt("id"));
                p.setPatientid(rs.getInt("patient_id"));
                p.setTherapistid(rs.getInt("therapist_id"));
                p.setStatus(rs.getInt("status"));
                p.setDate(rs.getString("date"));
                p.setTime_from(rs.getString("time_from"));
                p.setTime_to(rs.getString("time_to"));
            }

        } catch (Exception e) {
        }

        return p;

    }

    public void deleteAppointment(int id) {
        Connection conn;
          PreparedStatement ps;
          
        try {
            String sqldelete = "DELETE FROM appointment WHERE id=?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(sqldelete);
            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }
}

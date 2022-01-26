/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Time;
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
    private Date date;
    private Time time_from;
    private Time time_to;

    public Appointment() {
    }

    public Appointment(int appointmentid, int patientid, int therapistid, int status, Date date, Time time_from, Time time_to) {
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime_from() {
        return time_from;
    }

    public void setTime_from(Time time_from) {
        this.time_from = time_from;
    }

    public Time getTime_to() {
        return time_to;
    }

    public void setTime_to(Time time_to) {
        this.time_to = time_to;
    }
    
    public void addAppointment(int patientid, int therapistid, int status, Date date,Time time_from, Time time_to) {
        Connection conn;
        PreparedStatement ps;
        try {
            String SQL = "INSERT INTO appointment(patient_id, therapist_id, status,phone)VALUES(?,?,?,?)";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(SQL);
            ps.setInt(1, patientid);
            ps.setInt(2, therapistid);
            ps.setInt(3, status);
            ps.setDate(4, date);
            ps.setTime(5, time_from);
            ps.setTime(6, time_to);
            ps.executeUpdate();

        } catch (Exception e) {
        }
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
                p.setDate(rs.getDate("date"));
                p.setTime_from(rs.getTime("time_from"));
                p.setTime_to(rs.getTime("time_to"));
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

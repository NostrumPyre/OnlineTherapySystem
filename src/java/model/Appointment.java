/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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
    
    
    
}

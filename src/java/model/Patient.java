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
public class Patient {
    
    private int patientid;
    private String name;
    private String email;
    private String password;
    private String dob;
    private String address;
    private String phone;
    private String form_question;
    private String form_answer;

    public Patient() {
    }

    public Patient(int patientid, String name, String email, String password, String dob, String address, String phone, String form_question, String form_answer) {
        this.patientid = patientid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.address = address;
        this.phone = phone;
        this.form_question = form_question;
        this.form_answer = form_answer;
    }

    public int getPatientid() {
        return patientid;
    }

    public void setPatientid(int patientid) {
        this.patientid = patientid;
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

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
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

    public String getForm_question() {
        return form_question;
    }

    public void setForm_question(String form_question) {
        this.form_question = form_question;
    }

    public String getForm_answer() {
        return form_answer;
    }

    public void setForm_answer(String form_answer) {
        this.form_answer = form_answer;
    }
    
    
    
    
}

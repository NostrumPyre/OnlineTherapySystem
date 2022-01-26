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
public class Questionaire {
    
    private int questionaireid;
    private int patientid;
    private String gender;
    private String age;
    private String interest;
    private String comm_pref;
    private String gen_pref;
    private String country;
    private String pref_language;
    private String patient_condition;

    public Questionaire() {
    }

    public Questionaire(int questionaireid, int patientid, String gender, String age, String interest, String comm_pref, String gen_pref, String country, String pref_language, String patient_condition) {
        this.questionaireid = questionaireid;
        this.patientid = patientid;
        this.gender = gender;
        this.age = age;
        this.interest = interest;
        this.comm_pref = comm_pref;
        this.gen_pref = gen_pref;
        this.country = country;
        this.pref_language = pref_language;
        this.patient_condition = patient_condition;
    }

    public int getQuestionaireid() {
        return questionaireid;
    }

    public void setQuestionaireid(int questionaireid) {
        this.questionaireid = questionaireid;
    }

    public int getPatientid() {
        return patientid;
    }

    public void setPatientid(int patientid) {
        this.patientid = patientid;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getComm_pref() {
        return comm_pref;
    }

    public void setComm_pref(String comm_pref) {
        this.comm_pref = comm_pref;
    }

    public String getGen_pref() {
        return gen_pref;
    }

    public void setGen_pref(String gen_pref) {
        this.gen_pref = gen_pref;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPref_language() {
        return pref_language;
    }

    public void setPref_language(String pref_language) {
        this.pref_language = pref_language;
    }

    public String getPatient_condition() {
        return patient_condition;
    }

    public void setPatient_condition(String patient_condition) {
        this.patient_condition = patient_condition;
    }
    
    public void insertQuestionaire(int patientid,String gender, String age, String interest, String comm_pref, String gen_pref, String country, String pref_language, String patient_con) {
       Connection conn;
       PreparedStatement ps;
      try{
          String SQL = "INSERT INTO questionaire(patient_id, gender, age, interest, comm_pref, gen_pref, country, pref_language, patient_condition)VALUES(?,?,?,?,?,?,?,?,?)";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setInt(1, patientid);
          ps.setString(2, gender);
          ps.setString(3, age);
          ps.setString(4, interest);
          ps.setString(5, comm_pref);
          ps.setString(6, gen_pref);
          ps.setString(7, country);
          ps.setString(8, pref_language);
          ps.setString(9, patient_con);
          ps.executeUpdate();
          
      }catch(Exception e){}  
    }
    
    
    public Questionaire getProject(int id) {
      Connection conn;
      PreparedStatement ps;
      ResultSet rs;   
      Questionaire q= new Questionaire();
      
      try{
          String SQL = "SELECT * FROM questionaire WHERE id=?";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setInt(1, id);
          rs = ps.executeQuery();
       
          while(rs.next())
          {
              q.setQuestionaireid(rs.getInt("id"));
              q.setPatientid(rs.getInt("patient_id"));
              q.setGender(rs.getString("gender"));
              q.setAge(rs.getString("age"));
              q.setInterest(rs.getString("interest"));
              q.setComm_pref(rs.getString("comm_pref"));
              q.setGen_pref(rs.getString("gen_pref"));
              q.setCountry(rs.getString("country"));
              q.setPref_language(rs.getString("pref_language"));
              q.setPatient_condition(rs.getString("patient_condition"));
          }
          
      }catch(Exception e){}
      
      return q;
        
    }  
    
}

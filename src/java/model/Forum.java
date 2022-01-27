/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Darlen
 */
public class Forum {
    private int forumid;
    private String forum_question;
    private String forum_answer;

    public Forum() {
    }

    public int getForumid() {
        return forumid;
    }

    public void setForumid(int forumid) {
        this.forumid = forumid;
    }

    public String getForum_question() {
        return forum_question;
    }

    public void setForum_question(String forum_question) {
        this.forum_question = forum_question;
    }

    public String getForum_answer() {
        return forum_answer;
    }

    public void setForum_answer(String forum_answer) {
        this.forum_answer = forum_answer;
    }
    
    public void insertForumQuestion(String forum_question, String title) {
       Connection conn;
       PreparedStatement ps;
      try{
          String SQL = "INSERT INTO FORUM(forum_question, title)VALUES(?,?)";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setString(1, forum_question);
          ps.setString(2, title);
          ps.executeUpdate();
          
      }catch(Exception e){}  
    }
    
}

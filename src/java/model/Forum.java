/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Darlen
 */
public class Forum {
    private int forumid;
    private String forum_question;
    private String forum_answer;
    private String title;
    public Forum() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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
    
    public void insertForumAnswer(int id, Forum f) {
       Connection conn;
       PreparedStatement ps;
       try{
            String sqlupdate = "UPDATE FORUM SET forum_answer=? WHERE id =?";
            conn = DBConnection.openConnection();
            ps = conn.prepareStatement(sqlupdate);
            ps.setString(1,f.getForum_answer());
            ps.setInt(2,id);
            ps.executeUpdate();
            
        }catch(Exception e){}
    }  
    
    
    
    
    
    public ArrayList<Forum> getAllForumData() {
       Connection conn;
       ArrayList<Forum> forumList = new ArrayList<>();

        try {
            String SQL = "SELECT * FROM FORUM";
            conn = DBConnection.openConnection();
            Statement stmt = conn.createStatement();
        
           ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                Forum p = new Forum();
                
                p.setForumid(rs.getInt("id"));
                p.setForum_question(rs.getString("forum_question"));
                p.setForum_answer(rs.getString("forum_answer"));
                p.setTitle(rs.getString("title"));
                
                forumList.add(p);
            }

        } catch (Exception e) {
        }

        return forumList;

    }
    
    public Forum getForumQuestion(int id) {
      Connection conn;
      PreparedStatement ps;
      ResultSet rs;   
      Forum forum= new Forum();
      
      try{
          String SQL = "SELECT * FROM FORUM WHERE id=?";
          conn = DBConnection.openConnection();
          ps = conn.prepareStatement(SQL);
          ps.setInt(1, id);
          rs = ps.executeQuery();
       
          while(rs.next())
          {
              forum.setForumid(rs.getInt("id"));
              forum.setForum_question(rs.getString("forum_question"));
              forum.setTitle(rs.getString("title"));
          }
          
      }catch(Exception e){}
      
      return forum;
        
    }  
    
}

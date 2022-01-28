/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author rhyth
 */
public class DBConnection {
    
    private static final String connectionURL = "jdbc:mysql://localhost:3306/";
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String username = "root";
    private static final String password = "root";
    private static final String database = "therapion";
    private static Connection conn = null;
    
    
    public static Connection openConnection(){
//    register & load db driver
//    create a connection,pass,the connection object to caller        
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(connectionURL+database, username,password);
        }catch(Exception e){}
        return conn;
    }

//     close connection
    public static void closeConnection(){
        
        try{
         conn.close();   
        }catch(SQLException e){
           Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE,null,e);
        }
        
    }
    
}

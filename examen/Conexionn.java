/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package examen;

import java.sql.*;
import javax.swing.JOptionPane;
 
public class Conexionn {
 
    public static Connection getConnection(){
        String url = "jdbc:sqlserver://localhost:1433;databaseName=java;encrypt=true;trustServerCertificate=true;"
                     + "user=sa;"
                     + "password=123;"
                     + "loginTimeout=30";
        try{
           Connection con = DriverManager.getConnection(url);
           return con;
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, e.toString());
         return null;

        }

    }
}


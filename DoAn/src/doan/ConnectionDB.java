/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package doan;

import java.sql.*;

/**
 *
 * @author phong
 */
public class ConnectionDB {

     public Connection con = null;
     public Statement s;

    public  ConnectionDB() {
        try {
            String uRL = "jdbc:sqlserver://localhost:1433;databaseName=ATM";
            String user = "sa";
            String pass = "123";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(uRL, user, pass);
            s=con.createStatement();
        } catch (Exception e) {
            System.out.println("Loi" + e.toString());
        }
    }

}

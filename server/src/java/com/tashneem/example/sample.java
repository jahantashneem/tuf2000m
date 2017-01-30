/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tashneem.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author mohammadrizviansari
 */
@WebService(serviceName = "sample")
public class sample {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "Register_Number")
    public String Register_Number(@WebParam(name = "name") int txt, int number) {
        ResultSet rs = null;
        String details = "";
       System.out.println(number); 
 
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Register_Reading", "root", "root");
       
            String query = "select ID,variable_name from register_data where register_number='"+txt+"'";

            PreparedStatement st = con.prepareStatement(query);
            rs = st.executeQuery();
            byte newnumber=(byte)number;
            while (rs.next()) 
            {
               details = rs.getString("variable_name") +"   is  "+ newnumber;
               
            }
            
        } 
        catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }   
        return details;
    
    }
}

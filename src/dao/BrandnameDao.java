package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.net.httpserver.Authenticator.Result;


import model.Brand;

public class BrandnameDao {
   
   
   /*
    * public List<Brand> list(){ Connection conn = DBConnection.getConnection();
    * PreparedStatement pstmt = null; ResultSet rs = null; List<Brand> list = new
    * ArrayList<Brand>(); String sql ="select * from Brand"; try { pstmt =
    * conn.prepareStatement(sql); rs = pstmt.executeQuery(); while(rs.next()) {
    * Brand b = new Brand(); b.setBrand_Name(rs.getString("brand_name"));
    * b.setMenu(rs.getString("menu")); b.setPrice(rs.getString("price"));
    * 
    * list.add(b); } return list; }catch(SQLException e) { e.printStackTrace();
    * }finally { DBConnection.close(conn, pstmt, rs); } return null; }
    */
   
   
   
   public List<Brand> list(){
         Connection conn = DBConnection.getConnection();
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         List<Brand> list = new ArrayList<Brand>();
         String sql ="select * from brand_menu";
         try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
               Brand b = new Brand();
               b.setBrand_Name(rs.getString("brand_name"));
               b.setMenu(rs.getString("menu"));
               b.setPrice(rs.getString("price"));
               
               list.add(b);
            }
            return list;
         }catch(SQLException e) {
            e.printStackTrace();
         }finally {
            DBConnection.close(conn, pstmt, rs);
         }
         return null;
      }
   

}
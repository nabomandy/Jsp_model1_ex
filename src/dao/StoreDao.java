package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Brand;
import model.Order;
import model.Store;

public class StoreDao {
  public List<Store> list() {
    Connection conn = DBConnection.getConnection();
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    List<Store> list = new ArrayList<Store>();
    String sql = "select * from brand_info";
    try {
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      while (rs.next()) {
        Store s = new Store();
        s.setBrand_name(rs.getString("brand_name"));
        s.setStore_name(rs.getString("store_name"));
        s.setArea(rs.getString("area"));
        s.setAddress(rs.getString("address"));
        s.setImg_name(rs.getString("img_name"));
        s.setImg_rep1(rs.getString("img_rep1"));
        s.setStore_tel(rs.getString("store_tel"));
        s.setRun_time(rs.getString("runtime"));
        list.add(s);
      }
      return list;
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBConnection.close(conn, pstmt, rs);
    }
    return null;
  }

  public List<Brand> listBrand() {
    Connection conn = DBConnection.getConnection();
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    List<Brand> list = new ArrayList<Brand>();
    String sql = "select * from brand_menu";
    try {
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      while (rs.next()) {
        Brand b = new Brand();
        b.setBrand_Name(rs.getString("brand_name"));
        b.setMenu(rs.getString("menu"));
        b.setPrice(rs.getString("price"));

        list.add(b);
      }
      return list;
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBConnection.close(conn, pstmt, rs);
    }
    return null;
  }



  public Store listOne(String store_name) {
    Connection conn = DBConnection.getConnection();
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select * from brand_info where store_name = ?";
    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, store_name);
      rs = pstmt.executeQuery();
      Store s = new Store();
      if (rs.next()) {

        s.setBrand_name(rs.getString("brand_name"));
        s.setStore_name(rs.getString("store_name"));
        s.setArea(rs.getString("area"));
        s.setAddress(rs.getString("address"));
        s.setImg_name(rs.getString("img_name"));
        s.setImg_rep1(rs.getString("img_rep1"));
        s.setImg_rep2(rs.getString("img_rep2"));
        s.setImg_rep3(rs.getString("img_rep3"));
        s.setImg_rep4(rs.getString("img_rep4"));
        s.setImg_rep5(rs.getString("img_rep5"));
        s.setImg_rep6(rs.getString("img_rep6"));
        s.setImg_rep7(rs.getString("img_rep7"));
        s.setPop_menu1(rs.getString("pop_menu1"));
        s.setPop_menu2(rs.getString("pop_menu2"));
        s.setPop_menu3(rs.getString("pop_menu3"));
        s.setPop_menu4(rs.getString("pop_menu4"));
        s.setPop_menu5(rs.getString("pop_menu5"));
        s.setPop_menu6(rs.getString("pop_menu6"));
        s.setStore_tel(rs.getString("store_tel"));
        s.setRun_time(rs.getString("runtime"));

      }
      return s;
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      DBConnection.close(conn, pstmt, rs);
    }
    return null;
  }
  
  public List<Order> listOrder() {
      Connection conn = DBConnection.getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      List<Order> list = new ArrayList<Order>();
      String sql = "select * from order_list";
      try {
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while (rs.next()) {
          Order o = new Order();
          o.setId(rs.getString("id"));
          o.setContent(rs.getString("content"));

          list.add(o);
        }
        return list;
      } catch (SQLException e) {
        e.printStackTrace();
      } finally {
        DBConnection.close(conn, pstmt, rs);
      }
      return null;
    }
  
}

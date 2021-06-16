package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// 오라클 데이터베이스에 연결하고 select, insert, update, delete 작업을 실행해주는 클래스입니다.
public class MenuDAO {

  // 오라클에 접속하는 소스를 작성
  String id = "kic"; // 접속아이디
  String pass = "1234";
  String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 접속 url

  Connection con; // 데이터베이스에 접근할 수 있도록 설정
  PreparedStatement pstmt; // 데이터베이스에서 쿼리를 실행시켜주는 객체선언
  ResultSet rs; // 데이터베이스 테이블의 결과를 리턴받아 자바에 저장해주느 객체


  // 데이터 베이스에 접근할 수 있도록 도와주는 메소드
  public void getCon() {

    try {
      // 1. 해당 데이터 베이스를 사용한다고 선언(클래스를 등록=오라클용을 사용)
      Class.forName("oracle.jdbc.driver.OracleDriver");
      // 2. 해당 데이터 베이스에 접속
      con = DriverManager.getConnection(url, id, pass);
    } catch (Exception e) {
      // TODO: handle exception
    }
  }

  // 데이터 베이스에 한사람의 회원 정보를 저장해주는 메소드
  public void insertMenu(MenuBean mbean) {

    try {
      getCon();
      // 3. 접속 후 쿼리준비하여 쿼리를 사용하도록 설정
      String sql = "insert into BRAND_MENU values(?,?,?)";
      // 쿼리를 사용하도록 설정
      PreparedStatement pstmt = con.prepareStatement(sql); // jsp에서 쿼리를 사용하도록 설정
      // ?에 맞게 맞게 데이터를 맵핑
      pstmt.setString(1, mbean.getBrand_name());
      pstmt.setString(2, mbean.getBrand_menu());
      pstmt.setString(3, mbean.getPrice());

      // 4. 오라클에서 쿼리를 실행하시오
      pstmt.executeUpdate();// insert, update, delete 시 사용하는 메소드

      // 5. 자원 반납
      con.close();


    } catch (Exception e) {
      e.printStackTrace();
    }


  }

}

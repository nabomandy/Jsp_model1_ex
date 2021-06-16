package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Member;

//CRUD sql  모아 놓은객체
public class MemberDao {
	
	public int insert(Member mem) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into member_info "
				+ " (id, pass,name,birth,gender,email,tel)"
				+ " values (?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPass());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getBirth());
			pstmt.setString(5, mem.getGender());
			pstmt.setString(6, mem.getEmail());
			pstmt.setString(7, mem.getTel());
			return pstmt.executeUpdate(); //등록성공시 1값 리턴
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
		return 0;
	}
	
	public Member selectOne(String id) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		String sql = "select * from member_info where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				Member m = new Member();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setBirth(rs.getString("birth"));
				m.setGender(rs.getString("gender"));
				m.setEmail(rs.getString("email"));
				m.setTel(rs.getString("tel"));
				
				return m;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return null;		
	}
	
	public int update(Member mem) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql="update member_info set name=? , tel=?,"
				+ " email=?  where id = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, mem.getName());
			pstmt.setString(2, mem.getTel());
			pstmt.setString(3, mem.getEmail());
			pstmt.setString(4, mem.getId());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
		
		
		
		return 0;
		
	}
	
	public int delete(String id)  {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from member_info where id = ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, null);
		}
		
		
		return 0;
	}

	
	public List<Member>  list() {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		List<Member> li = new ArrayList<Member>();
		String sql = "select * from member_info";
		try {
			pstmt = conn.prepareStatement(sql);
		
			rs=pstmt.executeQuery();
			while (rs.next()) {
				Member m = new Member();
				m.setId(rs.getString("id"));
				m.setPass(rs.getString("pass"));
				m.setName(rs.getString("name"));
				m.setBirth(rs.getString("birth"));
				m.setGender(rs.getString("gender"));
				m.setEmail(rs.getString("email"));
				m.setTel(rs.getString("tel"));
				System.out.println(m);
				li.add(m);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return li;	
		
	}
	
	
	public int updatePass(String id, String chgpass) {
		String sql="update member_info set pass=? where id = ?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, chgpass);
			pstmt.setString(2, id);
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBConnection.close(conn, pstmt, null);
		}
		return 0;
	}
	
}
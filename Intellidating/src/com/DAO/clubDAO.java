package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.DTO.bookDTO;
import com.DTO.clubDTO;
import com.DTO.memberDTO;

public class clubDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int createclub(String name, int mem_cnt, String detail) {
		int cnt = 0;
		getConnection();
		String sql = "INSERT INTO CLUB(club_num, club_name, club_mem_cnt, club_detail) VALUES(seq_club_num.NEXTVAL,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setInt(2, mem_cnt);
			ps.setString(3, detail);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;

	}

	public int joinclub(int club_num, int mem_num) {

		int cnt = 0;
		getConnection();
		String sql = "UPDATE CLUB set club_mem_cnt=club_mem_cnt+1 where club_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, mem_num);
			ps.executeUpdate();
			sql = "UPDATE MEMBER set mem_club1=? where mem_num=?";
			// 하나의 클럽만 가입
			ps = conn.prepareStatement(sql);
			ps.setInt(1, club_num);
			ps.setInt(2, club_num);
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
	
	public clubDTO selectclub(int club_num) {
		clubDTO dto = null;
		getConnection();
		String sql = "SELECT * FROM CLUB WHERE club_num=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, club_num);
			rs = ps.executeQuery();
			if (rs.next()) {
				int get_num = rs.getInt(1);
				String get_name = rs.getString(2);
				int get_mem_cnt = rs.getInt(3);
				String get_detail = rs.getString(4);
				String get_type1 = rs.getString(5);
				String get_type2 = rs.getString(6);
				String get_type3 = rs.getString(6);

				dto = new clubDTO(get_num, get_name, get_mem_cnt, get_detail, get_type1, get_type2, get_type3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;

	}
}

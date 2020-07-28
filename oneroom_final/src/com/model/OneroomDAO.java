package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class OneroomDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	int cnt = 0;
	ResultSet rs = null;
	String name = null;
	String email = null;

	private void Connect() {
		try {
			// 1.db동적 할당
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			// 2.db의 connection객체 반환
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			System.out.println("연결성공!!!");
		} catch (ClassNotFoundException e) {
			System.out.println("연결안됨.");
		} catch (SQLException e) {
			System.out.println("연결 sql문이 잘 못 됨");
		}

	}

	private void Close() {
		try {
			if (rs != null) {
				rs.close();
			}

			if (psmt != null) {
				psmt.close();
			}

			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			System.out.println("끊기 sql문이 잘 못 됨.");
		}
	}

	
	public OneroomDTO select(int num) {
		Connect();
		String sql = "select * from oneroom where num=? ";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);

			rs = psmt.executeQuery();

			while (rs.next()) {
				 num=rs.getInt(1);
				//매물번호
				 System.out.println("dao확인매물번호:"+num);
				String realtor=rs.getString(2);
				//공인중개사
				System.out.println("dao확인공인중개사:"+realtor);
				double area=rs.getDouble(3);
				//면적(계약면적)
				String adress=rs.getString(4);
				//주소
				System.out.println("dao확인주소:"+adress);
				int floor=rs.getInt(5);
				//층
				System.out.println("dao확인층:"+floor);
				int monthlyfee=rs.getInt(6);
				//매물 월세
				System.out.println("dao확인월세:"+monthlyfee);
				int	charter=rs.getInt(7);
				//매물 전세
				System.out.println("dao매물전세:"+charter);
				int	difference_monthlyfee=rs.getInt(8);
				//시세차액(시세-월세)
				System.out.println("dao시세차액:"+difference_monthlyfee);
				int difference_charter=rs.getInt(9);
				//시세차액(시세-전세)
				System.out.println("dao시세차액(시세-전세):"+difference_charter);
				
				int insurance=rs.getInt(10);
				//보증보험여부--0:해당없음,1:해당--
				int building_registration=rs.getInt(11);
				//건물등기여부--0:해당없음,1:해당
				int land_ledger =rs.getInt(12);
				//---토지대장여부--0:해당없음,1:해당--
				int building_book =rs.getInt(13);
				//건축물대장여부--0:해당없음,1:해당
				int num_count=rs.getInt(14);
				//매물번호 8자리 여부--0:8자리 아님,1:8자리 맞음--
				
				
				return new OneroomDTO(num, realtor, area, adress, floor, monthlyfee, charter, difference_monthlyfee, difference_charter, insurance, building_registration, land_ledger, building_book, num_count);
			
			}

		} catch (SQLException e) {
			System.out.println("sql문 잘못select!!!");
		} finally {
			Close();
		}

		return null;
	}

	

	

}

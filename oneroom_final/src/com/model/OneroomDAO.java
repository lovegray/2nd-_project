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
			// 1.db���� �Ҵ�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			// 2.db�� connection��ü ��ȯ
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			System.out.println("���Ἲ��!!!");
		} catch (ClassNotFoundException e) {
			System.out.println("����ȵ�.");
		} catch (SQLException e) {
			System.out.println("���� sql���� �� �� ��");
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
			System.out.println("���� sql���� �� �� ��.");
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
				//�Ź���ȣ
				 System.out.println("daoȮ�θŹ���ȣ:"+num);
				String realtor=rs.getString(2);
				//�����߰���
				System.out.println("daoȮ�ΰ����߰���:"+realtor);
				double area=rs.getDouble(3);
				//����(������)
				String adress=rs.getString(4);
				//�ּ�
				System.out.println("daoȮ���ּ�:"+adress);
				int floor=rs.getInt(5);
				//��
				System.out.println("daoȮ����:"+floor);
				int monthlyfee=rs.getInt(6);
				//�Ź� ����
				System.out.println("daoȮ�ο���:"+monthlyfee);
				int	charter=rs.getInt(7);
				//�Ź� ����
				System.out.println("dao�Ź�����:"+charter);
				int	difference_monthlyfee=rs.getInt(8);
				//�ü�����(�ü�-����)
				System.out.println("dao�ü�����:"+difference_monthlyfee);
				int difference_charter=rs.getInt(9);
				//�ü�����(�ü�-����)
				System.out.println("dao�ü�����(�ü�-����):"+difference_charter);
				
				int insurance=rs.getInt(10);
				//�������迩��--0:�ش����,1:�ش�--
				int building_registration=rs.getInt(11);
				//�ǹ���⿩��--0:�ش����,1:�ش�
				int land_ledger =rs.getInt(12);
				//---�������忩��--0:�ش����,1:�ش�--
				int building_book =rs.getInt(13);
				//���๰���忩��--0:�ش����,1:�ش�
				int num_count=rs.getInt(14);
				//�Ź���ȣ 8�ڸ� ����--0:8�ڸ� �ƴ�,1:8�ڸ� ����--
				
				
				return new OneroomDTO(num, realtor, area, adress, floor, monthlyfee, charter, difference_monthlyfee, difference_charter, insurance, building_registration, land_ledger, building_book, num_count);
			
			}

		} catch (SQLException e) {
			System.out.println("sql�� �߸�select!!!");
		} finally {
			Close();
		}

		return null;
	}

	

	

}

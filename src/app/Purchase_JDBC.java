package app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Purchase_JDBC {

	public void purch(String pro_name,int order_no) {

		String url = "jdbc:mysql://localhost/ecsite";
		String id = "root";
		String pw = "password";
		Connection cnct = null;
		PreparedStatement pst1 = null;
		PreparedStatement pst2 = null;
		ResultSet rs = null;
		int stock = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnct = DriverManager.getConnection(url,id,pw);
			String query1 = "select stock_no from ecsite where pro_name = ?";
			String query2 = "update ecsite set stock_no = ? where pro_name = ?";
			pst1 = cnct.prepareStatement(query1);
			pst1.setString(1,pro_name);
			rs = pst1.executeQuery();
			while(rs.next()) {
				stock = rs.getInt("stock_no");
			}
			int quantity = stock-order_no;
			pst2 = cnct.prepareStatement(query2);
			pst2.setInt(1,quantity);
			pst2.setString(2,pro_name);
			pst2.executeUpdate();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if (pst1!=null) pst1.close();
				if (pst2!=null) pst2.close();
				if (cnct!=null) cnct.close();
			} catch (Exception ex) { }
		}
	}

}

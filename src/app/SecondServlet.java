package app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecondServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//JDBC - データベース"ecsite"のログイン情報を定義
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("Search");
		String url ="jdbc:mysql://localhost/ecsite";
		String id = "root";
		String pw = "password";
		Connection cnct = null;
		PreparedStatement pst = null;
		ResultSet rs = null;

		//データベースから"login_cd","login_pw"をパラメータに格納
		try {
		Class.forName("com.mysql.jdbc.Driver");
		try {
			cnct = DriverManager.getConnection(url, id, pw);
			String query = "SELECT from user where ()=(?)";
			pst = cnct.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, pw);
			rs = pst.executeQuery();

			//例外処理
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
			} catch(ClassNotFoundException ex) {
				ex.printStackTrace();
			}finally {
				//データベースを閉じる
				try {
					if(pst!=null)pst.close();
					if(cnct!=null)cnct.close();
					if(rs!=null)rs.close();
				}catch (Exception ex) {}
			}

			//"ProductDatail.jsp" （３ページ目）に転送する設定
			RequestDispatcher rd = req.getRequestDispatcher("ThirdServlet.java");
			rd.forward(req, resp);
	}
}

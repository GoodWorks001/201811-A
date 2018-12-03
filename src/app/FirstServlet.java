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
import javax.servlet.http.HttpSession;

public class FirstServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//JDBC - データベース"ecsite"のログイン情報を定義
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		String pass = req.getParameter("password");
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
				String query = "SELECT login_cd,login_pw from user where (login_cd,login_pw)=(?,?)";
				pst = cnct.prepareStatement(query);
				pst.setString(1, name);
				pst.setString(2, pass);
				rs = pst.executeQuery();

				//ログインに成功すれば、以下の結果を定義
				if(rs.next()){
					HttpSession session = req.getSession(true);
					session.setAttribute("loginUser", name);
					RequestDispatcher rd = req.getRequestDispatcher("Search.jsp");
					rd.forward(req, resp);
				//ログインに失敗をすれば、以下の結果を定義
				}else {
					req.setAttribute("error", "名前またはパスワードが一致しません。");
					RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
					rd.forward(req, resp);
				}
				//呼び出したメソッドで例外が発生した場合、補足できるもの
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
				} catch(ClassNotFoundException ex) {
					ex.printStackTrace();
				}finally {
					//以下をクローズする定義
					try {
						if(pst!=null)pst.close();
						if(cnct!=null)cnct.close();
					}catch (Exception ex) {}

				}
			}


}



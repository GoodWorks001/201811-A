package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ThirdServlet extends HttpServlet {

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	req.setCharacterEncoding("UTF-8");
	//mineタイプを指定、文字エンコーディングを設定
	resp.setContentType("text/html;charset = UTF-8");
	HttpSession session = req.getSession(true);
				//jspから値を持って来る
	//JDBCをインスタンス化する
	ThirdJDBC JD = new ThirdJDBC();
	//JDBCから持ってくる？
	int Cd = Integer.parseInt(req.getParameter("pro_cd"));

	DatailBean  Data = JD.cart(Cd);


//DATAという名前の、値(Data)を送る
	req.setAttribute("Data",Data);


	//RequestDispatcherにてjspに値を渡している
	RequestDispatcher rd3 = req.getRequestDispatcher("ProductDatail.jsp");
	rd3.forward(req,resp);
}

}

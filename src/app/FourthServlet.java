package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FourthServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		//mineタイプを指定、文字エンコーディングを設定
		resp.setContentType("text/html;charset = UTF-8");
		HttpSession session = req.getSession(true);
					//jspから値を持って来る
		//JDBCをインスタンス化する
		FourthJDBC JD = new FourthJDBC();
		//JDBCから持ってくる？
		int Cd = Integer.parseInt(req.getParameter("pro_price"));
		int Quantity = Integer.parseInt(req.getParameter("quantity"));
		System.out.println(Quantity);
		DatailBean  Data = JD.cart(Cd);


	//DATAという名前の、値(Data)を送る
		req.setAttribute("Data",Data);
		req.setAttribute("Quantity",Quantity );


		//RequestDispatcherにてcartjspに値を渡している
		RequestDispatcher rd4 = req.getRequestDispatcher("cart.jsp");
		rd4.forward(req,resp);
	}

	}


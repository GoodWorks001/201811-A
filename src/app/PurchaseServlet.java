package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PurchaseServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		Purchase_JDBC pj = new Purchase_JDBC();
		pj.purch(name,quantity);
		req.setAttribute("name",name);
		req.setAttribute("price",price);
		req.setAttribute("quantity",quantity);
		RequestDispatcher rd = req.getRequestDispatcher("Purchase.jsp");
		rd.forward (req,resp);
		}

}

package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.BankAccount;
import com.Dao.UserDao;

/**
 * Servlet implementation class balanceServlet
 */
@WebServlet(urlPatterns="/balanceServlet")
public class balanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public balanceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");//设置字符集，避免乱码
		String name=null;
		//使用cookie得到username
		Cookie[] cookies=request.getCookies();
		if(cookies!=null)
		{
			for(Cookie c:cookies)
			{
				if(c.getName().equals("username"))
				{
					name=c.getValue();
		     	}
			}
		}
	    UserDao dao=new UserDao();
		double balance=dao.getBalance(name);
		request.setAttribute("username", name);
		request.setAttribute("balance", balance);
		request.getRequestDispatcher("/jsps/getbalance.jsp").forward(request, response);
		
	}

}

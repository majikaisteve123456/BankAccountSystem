package com.Servlet;

import java.io.IOException;
import com.Bean.*;
import com.Dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class depositServlet
 */
@WebServlet(urlPatterns="/depositServlet")
public class depositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public depositServlet() {
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
		request.setCharacterEncoding("utf-8");//设置字符集，避免乱码
		String s=request.getParameter("amount");
		double amount=Double.parseDouble(s);
		UserDao dao=new UserDao();
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
	    double balance=dao.getBalance(name);
	    BankAccount account=new BankAccount(name,balance);
		if(amount>=0)
		{
		    dao.deposit(account,amount);
		    request.getRequestDispatcher("/jsps/operation.jsp").forward(request, response);
		}else
		{
			response.sendRedirect("/jsps/deposit.jsp?error=yes");
		}
	}

}

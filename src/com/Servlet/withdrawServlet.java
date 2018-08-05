package com.Servlet;

import java.io.IOException;
import com.Dao.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.BankAccount;

/**
 * Servlet implementation class withdrawServlet
 */
@WebServlet(urlPatterns="/withdrawServlet")
public class withdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public withdrawServlet() {
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
	    BankAccount account=new BankAccount(name,balance);
		if(balance<amount)
		{
			response.sendRedirect("/jsps/withdraw.jsp?error=yes");
		}
		else {
		   
		    dao.withdraw(account,amount);
		    request.getRequestDispatcher("/jsps/operation.jsp").forward(request, response);
		}
	}

}

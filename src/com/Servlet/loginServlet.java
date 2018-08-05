package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import com.Dao.*;
import com.Bean.*;
/**
 * Servlet implementation class loginServlet
 */
@WebServlet(urlPatterns="/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
	
		request.setCharacterEncoding("utf-8");//ÉèÖÃ×Ö·û¼¯£¬±ÜÃâÂÒÂë
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		UserDao dao=new UserDao();
        com.Bean.User user=new com.Bean.User();
        user.setpassword(password);
        user.setusername(username);
		if(dao.checkUser(user))
		{  
			Cookie cookie=new Cookie("username",username);
			response.addCookie(cookie);
			//µÇÂ¼³É¹¦
			request.getRequestDispatcher("/jsps/operation.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("/jsps/login.jsp?error=yes");
		}
	}

}

package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.user;
import cn.bank.hpu.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
        //set utf code
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //get the submit
        String username = request.getParameter("username");
        String password = request.getParameter("password");
 
        user u = new user();
        u.setName(username);
        userManage um = new userManageImpl();
 
        //alter the position
        boolean flag = um.checkLogin(username, password);
        if(flag)
        {
            //stored in session
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            double perm = um.getpermition(u); 
            if(perm == 2)response.sendRedirect("Manager.jsp");
            else if(perm == 1)response.sendRedirect("feedback.jsp");
            else response.sendRedirect("success.jsp");
            
        }
        
        else
        {
            response.sendRedirect("fail.jsp");
        }
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request,response);
    }
}
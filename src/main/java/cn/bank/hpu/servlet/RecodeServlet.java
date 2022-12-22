package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.*;
import cn.bank.hpu.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/RecodeServlet")
public class RecodeServlet extends HttpServlet {
    /**
	 * if(conn==null)System.out.println("xb");
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("sname");
        String age = request.getParameter("age");
        String iden = request.getParameter("iden");
        
 
        user u = new user();
 
        
        u.setName(username);
        u.setPassword(password);
        u.setsname(name);
        u.setage(age);
        u.setiden(iden);
        
        
        Tss gh = new Tss();
        boolean flag = gh.tests(u);
        if(flag){
        
            response.sendRedirect("login.jsp");
        }else{
            response.sendRedirect("register.jsp");
        }
      
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
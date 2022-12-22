package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.*;
import cn.bank.hpu.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/ChanadminServlet")
public class ChanadminServlet extends HttpServlet {
    /**
	 * if(conn==null)System.out.println("xb");
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //转换字符串
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        String password = request.getParameter("password");
        String name = request.getParameter("sname");
        String age = request.getParameter("age");
        String iden = request.getParameter("iden");
        
 
        user u = new user();
 
        //添加用户提交的数据到数据库
        u.setName(username);
        u.setPassword(password);
        u.setsname(name);
        u.setage(age);
        u.setiden(iden);
        
        //处理结果跳转相应页面
        userManage um =new userManageImpl();
        boolean flag = um.change(u);
        if(flag){
            //注册成功后跳转
            response.sendRedirect(request.getContextPath() +"/FindServlet");
        }else{
            response.sendRedirect("fail.jsp");
        }
      
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
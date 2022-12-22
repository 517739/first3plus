package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.user;
import cn.bank.hpu.service.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/FindServlet")
public class FindServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //转换字符串
        HttpSession session = request.getSession();
 
        
        userManage um = new userManageImpl();
        String username= (String)session.getAttribute("username");
        
        user ux = um.geteverything(username);
        
        boolean flag = true;
        if(ux==null)flag = false;
        //处理结果跳转相应页面
        if(flag){
            //将提交的用户名存入session，前台登录成功页面调取
   
            
            session.setAttribute("username", username);
            session.setAttribute("username", ux.getName());
            session.setAttribute("sname", ux.getsname());
            session.setAttribute("age", ux.getage());
            session.setAttribute("iden", ux.getiden());
            session.setAttribute("balance", um.getmoney(ux));
            

            System.out.print(ux.getName());
            System.out.print("test");
            
 
            response.sendRedirect("imfo.jsp");
        }else{
            response.sendRedirect("fail.jsp");
        }
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

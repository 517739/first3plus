package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.user;
import cn.bank.hpu.service.userManage;
import cn.bank.hpu.service.userManageImpl;
import cn.bank.hpu.service.pdManage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BuyServlet")
public class BuyServlet extends HttpServlet {
    /**
	 * if(conn==null)System.out.println("xb");
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //转换字符串
        String Pname = request.getParameter("Pname");
        
        pdManage pm = new pdManage();
        
        HttpSession session = request.getSession();
        session.setAttribute("Pname", Pname);
        response.sendRedirect("Buy.jsp");
        
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

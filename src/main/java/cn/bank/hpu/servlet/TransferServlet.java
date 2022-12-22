package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.user;
import cn.bank.hpu.service.userManage;
import cn.bank.hpu.service.userManageImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/TransferServlet")
public class TransferServlet extends HttpServlet {
    /**
	 * if(conn==null)System.out.println("xb");
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
      
        HttpSession session = request.getSession();
        String hostname= (String)session.getAttribute("username");
        
        String password = request.getParameter("password");
        String targetname = request.getParameter("targetname");
        String moneys = request.getParameter("money");
        double money = Double.parseDouble(moneys); 
        
        String num = cn.bank.hpu.util.Test.convert(money);
        
        session.setAttribute("username", hostname);
        session.setAttribute("targetname", targetname);
        session.setAttribute("moneys", moneys);
        session.setAttribute("num", num);
        
        user u = new user();
        u.setName(hostname);
        userManage um = new userManageImpl();
        double balance = um.getmoney(u);
        if(money > balance)response.sendRedirect("tradefailbalan.jsp");
        else{
        	
            if(um.checkLogin(hostname, password))
            {
            	boolean flag = um.Trade(hostname,targetname,money);
                if(flag){
                    
                    response.sendRedirect("tradesuccess.jsp");
                    um.InsertRecord(hostname,targetname,moneys);
                }
                else
                {
                    response.sendRedirect("tradefailpass.jsp");
                }
                
               
            }
            else
            {
                response.sendRedirect("tradefailpass.jsp");
            }
        }
        
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

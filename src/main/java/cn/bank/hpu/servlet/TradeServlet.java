package cn.bank.hpu.servlet;

import java.io.IOException;

import cn.bank.hpu.model.user;
import cn.bank.hpu.model.product;
import cn.bank.hpu.service.userManage;
import cn.bank.hpu.service.userManageImpl;
import cn.bank.hpu.service.pdManage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/TradeServlet") 
public class TradeServlet extends HttpServlet {
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
        String Uname= (String)session.getAttribute("username");
        String Pname= (String)session.getAttribute("Pname");
        
        String quantity = request.getParameter("quantity");
        double qt = Double.parseDouble(quantity);
        String password = request.getParameter("password");
        
        session.setAttribute("Pname", Pname);
        session.setAttribute("quantity", quantity);
        
        //开始操作
        product p = new product();
        user u = new user();
        p.setPname(Pname);
        u.setName(Uname);
        pdManage pm = new pdManage();
        userManage um = new userManageImpl();
        double price = pm.getprice(p);
        double balance = um.getmoney(u);
        double ans = price * qt;
        ans=((int)(ans*100))/100;  
        String cost = "" + ans;
        
        String num = cn.bank.hpu.util.Test.convert(ans);
        session.setAttribute("cost", cost);
        session.setAttribute("num", num);
        if(ans > balance)response.sendRedirect("Tradefb.jsp");
        else{
        	
            if(um.checkLogin(Uname, password))
            {
            	boolean flag = pm.Buy(Uname,price,quantity);
                if(flag){
                	
                	um.InsertRecord(Uname,Pname,cost);
                    response.sendRedirect("Tradess.jsp");
                }
                else
                {
                    response.sendRedirect("Tradefp.jsp");
                }
                
               
            }
            else
            {
                response.sendRedirect("Tradefp.jsp");
            }
        }
        
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

package graduation.xidian.com;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher(request.getContextPath() + "/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("this is the login servlet..."); 测试程序有没有进来，也就是servlet与jsp的映射是否正确
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserBean bean = new UserBean();
		//bean.setUsername(username); 这种方式需要请求转发，而不是重定向。
		//request.setAttribute("bean", bean);
		boolean isLogin = bean.login(username, password);
		HttpSession session = request.getSession();
		System.out.println(session.getId());
		if(isLogin){
			//Date lastVisited = bean.getVisitedTime(username); 这样做重新写一个方法，增加了代码量，无用。
			//System.out.println("second----"+lastVisited);
			session.setAttribute("lastVisited", bean.getLastVisited());
			
			String date = new Date().toLocaleString();
			System.out.println(date);
		
			//Date nowVisited = new Date(); 错误的表示方式
			//System.out.println("now time :"+nowVisited);
			bean.updateTime(username, date);
			bean.setLogged(true);
			session.setAttribute("is_logged", bean.getLogged());
			session.setAttribute("username", username);
			String info = URLEncoder.encode("Login Success", "utf-8");
			response.sendRedirect(request.getContextPath() + "/index.jsp?alert="+info);
		}else{
			session.setAttribute("is_logged", bean.getLogged());
			String info = URLEncoder.encode("Login Fail", "utf-8");
			response.sendRedirect(request.getContextPath() + "/errorPage.jsp?alert="+info);
		}
		
		
	}

}

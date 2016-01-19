package graduation.xidian.com;

import java.io.IOException;
import java.net.URLEncoder;

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
		//request.getRequestDispatcher(request.getContextPath() + "/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//System.out.println(username+"---"+password);
		UserBean bean = new UserBean();
		bean.setUsername(username);
		request.setAttribute("userBean", bean);
		boolean isLogin = bean.login(username, password);
		//System.out.println(isLogin);
		//request.setAttribute("isLogin", isLogin);
		HttpSession session = request.getSession();
		if(isLogin){
			bean.setLogged(true);
			session.setAttribute("is_logged", bean.getLogged());
			String info = URLEncoder.encode("Login Success", "utf-8");
			response.sendRedirect(request.getContextPath() + "/editor.jsp?alert="+info);
		}else{
			session.setAttribute("is_logged", bean.getLogged());
			String info = URLEncoder.encode("Login Fail", "utf-8");
			response.sendRedirect(request.getContextPath() + "/tmpUser.jsp?alert="+info);
		}
		
		
	}

}

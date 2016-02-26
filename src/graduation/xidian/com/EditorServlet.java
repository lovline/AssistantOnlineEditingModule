package graduation.xidian.com;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/editor")
public class EditorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditorServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contents = request.getParameter("editor2");
		System.out.println(contents); //为什么得到的老是null呢。。奇怪
		
			
		request.getRequestDispatcher("/editor.jsp").forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contents = request.getParameter("editor1");
		System.out.println(contents);
		
		//这是用来限制beforeEditor界面出现一次，当编辑提交时直接出现realEditor界面
		HttpSession session = request.getSession();
		session.setAttribute("numVisited", 1);
		
		String info = URLEncoder.encode("editor success", "utf-8");
		response.sendRedirect(request.getContextPath() + "/editor.jsp?alert="+info);
		
	}

}

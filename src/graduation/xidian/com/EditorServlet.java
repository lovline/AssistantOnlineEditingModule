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
		
		
			
		request.getRequestDispatcher("/editor.jsp").forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contents = request.getParameter("editor1");
		String contents2 = request.getParameter("editor2");
		String emergency_person = request.getParameter("emergency_person");
		if(contents!=null && contents!=""){
			System.out.println(contents);   //直接在ckeditor里面得到的string是加在<p>标签里的字符串，需要后期特殊处理，用正则表达式
		}
		if(contents2!=null && contents2!=""){
			System.out.println(emergency_person);
			System.out.println(contents2);  //悬浮窗得到的string
			
		}
		
		//这是用来限制beforeEditor界面出现一次，当编辑提交时直接出现realEditor界面
		HttpSession session = request.getSession();
		session.setAttribute("numVisited", 1);
		
		String info = URLEncoder.encode("editor success", "utf-8");
		response.sendRedirect(request.getContextPath() + "/editor.jsp?alert="+info);
		
	}

}

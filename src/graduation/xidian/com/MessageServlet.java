package graduation.xidian.com;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/message")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MessageServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//测试漂浮层是否得到映射href="message"的映射条件
/*		System.out.println("this is href message servlet ...");
		//留言文字乱码问题待解决
		request.setCharacterEncoding("utf-8");
		String message2 = request.getParameter("message2");
		System.out.println(message2);
		String date = new Date().toLocaleString();
		
		MessageBean messageBean = new MessageBean();
		HttpSession session = request.getSession();
		Object username = session.getAttribute("username");
		Integer user_id = null;
		if(username == null){
			System.out.println("mei you deng lu ..");
		}else{
			System.out.println("user denglu ..");
			UserBean userbean = new UserBean();
			System.out.println((String)username);
			user_id = userbean.checkUserId((String)username);
		}
		
		String info = "";
		if(message2 != null && message2 != ""){
			messageBean.saveMessages(message2, date, user_id);
			info = URLEncoder.encode("Message2 Success", "utf-8");
		}*/
		
//		用在这里不合适，这样会分不清悬浮窗的提交和显示留言内容，要直接在jsp里面显示。
//		MessageBean messageBean = new MessageBean();
//		List<MessageBean> list = messageBean.getFromMysqlMessage();
//		request.setAttribute("message_list", list);
		
//		request.getRequestDispatcher("/message.jsp?alert="+info).forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("this is the message servlet..");
		request.setCharacterEncoding("utf-8");
		String message1 = request.getParameter("message1");
		//System.out.println(message1);
		String date = new Date().toLocaleString();
		MessageBean messageBean = new MessageBean();
		
		HttpSession session = request.getSession();
		Object username = session.getAttribute("username");
		//String usernaem = session.getAttribute("usernaem"); 如果这时候还没有username的值，这里就会报空指针异常，注意。
		Integer user_id = null;
		if(username == null){
			System.out.println("mei you deng lu ..");
		}else{
			System.out.println("user denglu ..");
			UserBean userbean = new UserBean();
			System.out.println((String)username);
			user_id = userbean.checkUserId((String)username);
			
		}
		String info = "";
		if(message1 != null && message1 != ""){
			messageBean.saveMessages(message1, date, user_id);
			info = URLEncoder.encode("Message1 Success", "utf-8");
		}
		response.sendRedirect(request.getContextPath() + "/message.jsp?alert="+info);
	}
}



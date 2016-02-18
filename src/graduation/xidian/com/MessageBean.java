package graduation.xidian.com;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MessageBean {
	
	private int id;
	private Integer userId;
	private String message;
	private Date message_time;
	private String message_user_name;
	

	public void saveMessages(String message, String date, Integer user_id) {
		DB db = new DB();
		String sql = "insert into messages(message,message_time,user_id) values(\""+message+"\",\""+date+"\","+user_id+")";
		db.insert(sql);
	}
	
	public List<MessageBean> getFromMysqlMessage() {
		DB db = new DB();
		List<MessageBean> list = new ArrayList<MessageBean>();
		String sql = "select * from messages";
		ResultSet rs = db.select(sql);
		try {
			while(rs.next()){
				MessageBean bean = new MessageBean();
				int user_id = rs.getInt("user_id");
				int message_id = rs.getInt("id");
				String message = rs.getString("message");
				Date date = rs.getTimestamp("message_time");
				
				bean.id = message_id;
				bean.userId = user_id;
				
				UserBean userbean = new UserBean();
				String user_message_name = "";
				if(user_id == 0){
					user_message_name = "tmp_user";
				}else{
					user_message_name = userbean.getUserNameFromUserId(user_id);
				}
				bean.message_user_name = user_message_name;
				
				bean.message = message;
				bean.message_time = date;
				
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getMessage_time() {
		return message_time;
	}

	public void setMessage_time(Date message_time) {
		this.message_time = message_time;
	}

	public String getMessage_user_name() {
		return message_user_name;
	}

	public void setMessage_user_name(String message_user_name) {
		this.message_user_name = message_user_name;
	}
	
	public MessageBean() {
		
	}

	public MessageBean(int id, Integer userId, String message,
			Date message_time, String message_user_name) {
		super();
		this.id = id;
		this.userId = userId;
		this.message = message;
		this.message_time = message_time;
		this.message_user_name = message_user_name;
	}
	

}

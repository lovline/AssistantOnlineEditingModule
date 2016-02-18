package graduation.xidian.com;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserBean {
	
	private Integer id;
	private String username;
	private String password;
	private Date lastVisited;
	
	public Date getLastVisited() {
		return lastVisited;
	}
	public void setLastVisited(Date lastVisited) {
		this.lastVisited = lastVisited;
	}
	public boolean isLogged() {
		return isLogged;
	}
	private boolean isLogged = false;
	
	public boolean getLogged() {
		return isLogged;
	}
	public void setLogged(boolean isLogged) {
		this.isLogged = isLogged;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public UserBean(Integer id, String username, String password,
			Date lastVisited, boolean isLogged) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.lastVisited = lastVisited;
		this.isLogged = isLogged;
	}
	
	public UserBean() {
		super();
	}
	
	public boolean login(String username, String password) {
		DB db = new DB();
		String sql = "select * from sstu where username=\""+username+"\" and "
				+ "password=\""+password+"\"";
		ResultSet rs = db.select(sql);
		try {
			if(rs.next()){
				//this.lastVisited = rs.getTime("lastVisited");
				this.lastVisited = rs.getTimestamp("lastVisited");
				System.out.println(this.lastVisited);
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public void updateTime(String username, String nowVisited){
		DB db = new DB();
		String sql = "update sstu set lastVisited=\""+nowVisited+"\" where username=\""+username+"\"";
		db.update(sql);
	}
	
	public Integer checkUserId(String username) {
		DB db = new DB();
		String sql = "select id from sstu where username=\""+username+"\"";
		ResultSet rs = db.select(sql);
		try {
			if(rs.next()){
				System.out.println("sstu id :"+rs.getInt("id"));
				return rs.getInt("id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public String getUserNameFromUserId(int user_id) {
		DB db = new DB();
		String sql = "select * from sstu where id="+user_id;
		ResultSet rs = db.select(sql);
		try {
			if(rs.next()){
				return rs.getString("username");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	public Date getVisitedTime(String username) {
//		DB db = new DB();
//		String sql = "select * from sstu where username=\""+username+"\"";
//		ResultSet rs = db.select(sql);
//		try {
//			if(rs.next()){
//				Date visitedTime = rs.getDate(username);
//				System.out.println("first-----"+visitedTime);
//				return visitedTime;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
	
	
	

}

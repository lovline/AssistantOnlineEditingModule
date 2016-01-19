package graduation.xidian.com;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBean {
	
	private Integer id;
	private String username;
	private String password;
	
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
	public UserBean(Integer id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
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
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	

}

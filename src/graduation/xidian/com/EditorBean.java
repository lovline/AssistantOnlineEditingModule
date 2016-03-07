package graduation.xidian.com;

import java.util.Date;

public class EditorBean {
	
	private int id;
	private Integer userId;
	private boolean status = false; //默认是正常编辑，true的话就是紧急编辑
	private String contents;
	private Date editor_time;
	private String emer_person;
	private String editor_username;

	
	
	
	public EditorBean() {
		super();
	}
	
	public EditorBean(int id, Integer userId, boolean status, String contents,
			Date editor_time,String emer_person, String editor_username) {
		super();
		this.id = id;
		this.userId = userId;
		this.status = status;
		this.contents = contents;
		this.editor_time = editor_time;
		this.emer_person = emer_person;
		this.editor_username = editor_username;
	}

	@Override
	public String toString() {
		return "EditorBean [id=" + id + ", userId=" + userId + ", status="
				+ status + ", contents=" + contents + ", editor_time="
				+ editor_time + ", emer_person=" + emer_person
				+ ", editor_username=" + editor_username + "]";
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
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getEditor_time() {
		return editor_time;
	}
	public void setEditor_time(Date editor_time) {
		this.editor_time = editor_time;
	}
	public String getEmer_person() {
		return emer_person;
	}

	public void setEmer_person(String emer_person) {
		this.emer_person = emer_person;
	}
	public String getEditor_username() {
		return editor_username;
	}
	public void setEditor_username(String editor_username) {
		this.editor_username = editor_username;
	}

	public void saveEditorsFloating(String contents2, String date,
			String emergency_person, Integer user_id) {
		DB db = new DB();
		String sql = "insert into editors(status,contents,editor_time,emer_person,user_id) values(1,\""+contents2+"\",\""+date+"\",\""+emergency_person+"\","+user_id+")";
		db.insert(sql);
		
	}

	public void saveEditors(String contents2, String date, Integer user_id) {
		DB db = new DB();
		String sql = "insert into editors(status,contents,editor_time,emer_person,user_id) values(0,\""+contents2+"\",\""+date+"\",\""+"编辑者本人"+"\","+user_id+")";
		db.insert(sql);
		
	}
	
	
}

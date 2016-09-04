package sist.co.Model;

import java.util.Date;

public class SistMemberVO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private int auth;
	
	public SistMemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	@Override
	public String toString() {
		return "SistMemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", auth=" + auth + "]";
	}
	
	
	
	
	
}

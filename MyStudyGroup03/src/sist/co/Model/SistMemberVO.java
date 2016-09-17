package sist.co.Model;

import java.util.Date;

public class SistMemberVO {
	//Data
	private String m_id;
	private String m_pw;
	private String m_nickname;
	private String m_name;
	private String m_gender;
	private String m_birth;
	private String m_postal;
	private String m_address;
	private String m_marketing;
	private String m_email;
	private String m_phone;
	private int m_action;
	
	//Method
	public SistMemberVO() {
		// TODO Auto-generated constructor stub
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}
	
	

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}

	public int getM_action() {
		return m_action;
	}

	public void setM_action(int m_action) {
		this.m_action = m_action;
	}

	public String getM_gender() {
		return m_gender;
	}

	public String getM_postal() {
		return m_postal;
	}

	public void setM_postal(String m_postal) {
		this.m_postal = m_postal;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_marketing() {
		return m_marketing;
	}

	public void setM_marketing(String m_marketing) {
		this.m_marketing = m_marketing;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	@Override
	public String toString() {
		return "SistMemberVO [m_id=" + m_id + ", m_pw=" + m_pw + ", m_nickname=" + m_nickname + ", m_name=" + m_name
				+ ", m_gender=" + m_gender + ", m_birth=" + m_birth + ", m_postal=" + m_postal + ", m_address="
				+ m_address + ", m_marketing=" + m_marketing + ", m_email=" + m_email + ", m_phone=" + m_phone
				+ ", m_action=" + m_action + ", getM_id()=" + getM_id() + ", getM_pw()=" + getM_pw() + ", getM_name()="
				+ getM_name() + ", getM_nickname()=" + getM_nickname() + ", getM_action()=" + getM_action()
				+ ", getM_gender()=" + getM_gender() + ", getM_postal()=" + getM_postal() + ", getM_birth()="
				+ getM_birth() + ", getM_address()=" + getM_address() + ", getM_marketing()=" + getM_marketing()
				+ ", getM_email()=" + getM_email() + ", getM_phone()=" + getM_phone() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
	

}

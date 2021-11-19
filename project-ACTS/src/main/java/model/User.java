package model;

import java.util.Date;

/**
 * 사용자 관리를 위해 필요한 도메인 클래스. USERINFO 테이블과 대응됨
 */
public class User {
	private String accountId;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String regNum; // 주민 번호
	private Date joinDate;
	private int rating;
	private String nickName;

	public User() { }		// 기본 생성자
	
	public User(String accountId, String password, String name, String email, String phone, String regNum,
			Date joinDate, int rating, String nickName) {
		super();
		this.accountId = accountId;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.regNum = regNum;
		this.joinDate = joinDate;
		this.rating = rating;
		this.nickName = nickName;
	}

	public User(String accountId, String name, String email, String phone) {
		this.accountId = accountId;
		this.name = name;
		this.email = email;
		this.phone = phone;		
	}
	
	/*public void update(User updateUser) {
        this.password = updateUser.password;
        this.name = updateUser.name;
        this.email = updateUser.email;
        this.phone = updateUser.phone;
    }*/
	
	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegNum() {
		return regNum;
	}
	
	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	/* 비밀번호 검사 */
	public boolean matchPassword(String password) {
		if (password == null) {
			return false;
		}
		return this.password.equals(password);
	}
	
	public boolean isSameUser(String accountId) {
        return this.accountId.equals(accountId);
    }

	@Override
	public String toString() {
		return "User [accountId=" + accountId + ", password=" + password + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", regNum=" + regNum + ", joinDate=" + joinDate + ", rating=" + rating + ", nickName=" + nickName + "]";
	}	
}

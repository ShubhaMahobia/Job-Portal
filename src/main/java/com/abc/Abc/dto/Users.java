package com.abc.Abc.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "User_details")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int userid;
	private String userName;
	private String password;
	private String first_name;
	private String last_name;
	private String Country;
	private String email;
	private long phone;
	private String role;

	// Default Constructor

	public Users() {
		super();
	}

//--------------------Getter & Setter---------------------------

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		this.Country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

// Constructor for the fields

	public Users(int userid, String userName, String password, String first_name, String last_name, String country,
			String email, long phone, String role) {
		super();
		this.userid = userid;
		this.userName = userName;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		Country = country;
		this.email = email;
		this.phone = phone;
		this.role = role;
	}

// toString method

	@Override
	public String toString() {
		return "Users [userid=" + userid + ", userName=" + userName + ", password=" + password + ", first_name="
				+ first_name + ", last_name=" + last_name + ", Country=" + Country + ", email=" + email + ", phone="
				+ phone + ", role=" + role + "]";
	}

	public Users(int userid, String userName, String password, String first_name, String last_name, String country,
			String email, long phone) {
		super();
		this.userid = userid;
		this.userName = userName;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		Country = country;
		this.email = email;
		this.phone = phone;
	}

	public Users(String password) {
		super();
		this.password = password;
	}

}
